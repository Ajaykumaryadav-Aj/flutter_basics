import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:my_first_app/hive/db_hive.dart';
import 'package:my_first_app/hive/todo.dart';
import 'package:my_first_app/my_todo/todo_model.dart';

class HiveTodoScreen extends StatefulWidget {
  const HiveTodoScreen({super.key, this.model});

  final TodoModel? model;

  @override
  State<HiveTodoScreen> createState() => _HiveTodoScreenState();
}

class _HiveTodoScreenState extends State<HiveTodoScreen> {
  // late PageProvider provider;
  // bool isloading = true;
  @override
  void dispose() {
    Hive.close();
    super.dispose();
  }
  // void initState() {
  //   provider = Provider.of<PageProvider>(context, listen: false);
  //   provider.getTodos().then((value) {
  //     setState(() {
  //       isloading = false;
  //     });
  //   });
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: HiveDB.instance.getAll(),
        builder: (context, box, child) {
          return Scaffold(
              appBar: AppBar(
                title: const Text('TODOs apps'),
              ),
              floatingActionButton: FloatingActionButton(
                onPressed: () {
                  showDialog(
                          context: context,
                          builder: (context) => AddTodo(length: box.length))
                      .then((value) {
                    setState(() {});
                  });
                },
                child: const Icon(Icons.add),
              ),
              body: ListView.builder(
                  itemCount: box.length,
                  itemBuilder: (context, index) {
                    final element = box.getAt(index);
                    return ListTile(
                      title: Text(element.title),
                      subtitle: Text(element.body),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                              onPressed: () {
                                showDialog(
                                    context: context,
                                    builder: (context) => AddTodo(no: index));
                              },
                              icon: const Icon(Icons.edit)),
                          IconButton(
                              onPressed: () {
                                HiveDB.instance.deleteTodo(index);
                                setState(() {});
                              },
                              icon: const Icon(Icons.delete))
                        ],
                      ),
                    );
                  }));
        });
  }
}

class AddTodo extends StatefulWidget {
  const AddTodo({
    super.key,
    this.length,
    this.no,
  });
  final int? no;
  final int? length;

  @override
  State<AddTodo> createState() => _AddTodoState();
}

class _AddTodoState extends State<AddTodo> {
  final controller1 = TextEditingController();
  final controller2 = TextEditingController();

  Todo? data;

  @override
  void dispose() {
    controller1.dispose();
    controller2.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    if (widget.no != null) {
      data = HiveDB.instance.getTodo(widget.no!);
      controller1.text = data!.title;
      controller2.text = data!.body;
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
                if (widget.no == null) {
                  HiveDB.instance.createTodo(
                    Todo(
                        id: widget.length ?? 1,
                        title: controller1.text,
                        body: controller2.text),
                  );
                  //     .then((value) {
                  //   context.read<PageProvider>().getTodos();
                  //   Navigator.pop(context);
                  // });
                } else {
                  HiveDB.instance.updateTodo(
                      widget.no!,
                      Todo(
                          id: widget.no!,
                          title: controller1.text,
                          body: controller2.text));
                }
                Navigator.pop(context);
                //   DbHelper.instance
                //       .updateTodos(
                //     TodoModel(
                //         id: widget.model!.id,
                //         title: controller1.text,
                //         body: controller2.text),
                //   )
                //       .then((value) {
                //     context.read<PageProvider>().getTodos();
                //     Navigator.pop(context);
                //   });
              },
              child: const Text('ADD'),
            ),
          ],
        ),
      ),
    );
  }
}
