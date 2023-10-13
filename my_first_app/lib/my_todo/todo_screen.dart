import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:my_first_app/my_todo/db_helper.dart';
import 'package:my_first_app/my_todo/todo_model.dart';
import 'package:my_first_app/providers/page_provider.dart';
import 'package:provider/provider.dart';

class TodoScreen extends StatefulWidget {
  const TodoScreen({super.key, this.model});

  final TodoModel? model;

  @override
  State<TodoScreen> createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
  late PageProvider provider;
  bool isloading = true;
  @override
  void initState() {
    provider = Provider.of<PageProvider>(context, listen: false);
    provider.getTodos().then((value) {
      setState(() {
        isloading = false;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    debugPrint(FirebaseAuth.instance.currentUser.toString());

    return Scaffold(
        appBar: AppBar(
          title: Text('${widget.model == null ? 'Create' : 'Edit'}TODO'),
          actions: [
            IconButton(
                onPressed: () {
                  FirebaseAuth.instance
                      .signOut()
                      .catchError((e) => debugPrint(e.toString()));
                },
                icon: const Icon(Icons.logout))
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) => AddTodo(
                no: provider.todos.length,
              ),
            );
          },
          child: const Icon(Icons.add),
        ),
        body: isloading
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : Selector<PageProvider, List<TodoModel>>(
                selector: (p0, p1) => p1.todos,
                builder: (context, list, child) {
                  return ListView.builder(
                      itemCount: list.length,
                      itemBuilder: (context, index) => ListTile(
                          title: Text(list[index].title),
                          subtitle: Text(list[index].body),
                          trailing: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              IconButton(
                                  onPressed: () {
                                    showDialog(
                                        context: context,
                                        builder: (context) => AddTodo(
                                              no: provider.todos.length,
                                              model: list[index],
                                            ));
                                  },
                                  icon: const Icon(Icons.edit)),
                              IconButton(
                                  onPressed: () {
                                    DbHelper.instance.delete(list[index]).then(
                                          (value) => provider.getTodos(),
                                        );
                                  },
                                  icon: const Icon(Icons.delete))
                            ],
                          )));
                },
              ));
  }
}

class AddTodo extends StatefulWidget {
  const AddTodo({
    super.key,
    required this.no,
    this.model,
  });
  final int no;
  final TodoModel? model;

  @override
  State<AddTodo> createState() => _AddTodoState();
}

class _AddTodoState extends State<AddTodo> {
  final controller1 = TextEditingController();
  final controller2 = TextEditingController();

  @override
  void dispose() {
    controller1.dispose();
    controller2.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    if (widget.model != null) {
      controller1.text = widget.model!.title;
      controller2.text = widget.model!.body;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('create todo'),
            TextField(
              controller: controller1,
              decoration: const InputDecoration(
                labelText: 'Title',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 15),
            TextField(
              controller: controller2,
              decoration: const InputDecoration(
                  labelText: 'Body', border: OutlineInputBorder()),
            ),
            const SizedBox(height: 15),
            ElevatedButton(
              onPressed: () {
                if (widget.model == null) {
                  DbHelper.instance
                      .createTodo(
                    TodoModel(
                        id: widget.no,
                        title: controller1.text,
                        body: controller2.text),
                  )
                      .then((value) {
                    context.read<PageProvider>().getTodos();
                    Navigator.pop(context);
                  });
                  return;
                }
                DbHelper.instance
                    .updateTodos(
                  TodoModel(
                      id: widget.model!.id,
                      title: controller1.text,
                      body: controller2.text),
                )
                    .then((value) {
                  context.read<PageProvider>().getTodos();
                  Navigator.pop(context);
                });
              },
              child: const Text('Create'),
            ),
          ],
        ),
      ),
    );
  }
}
