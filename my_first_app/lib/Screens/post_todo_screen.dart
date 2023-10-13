import 'package:flutter/material.dart';
import 'package:my_first_app/providers/auth_provider.dart';
import 'package:provider/provider.dart';

class PostTodoScreen extends StatefulWidget {
  const PostTodoScreen({super.key});

  @override
  State<PostTodoScreen> createState() => _PostTodoScreenState();
}

class _PostTodoScreenState extends State<PostTodoScreen> {
  late AuthProvider provider;
  @override
  void initState() {
    super.initState();
    provider = Provider.of<AuthProvider>(context, listen: false);
  }

  final emailcontroller = TextEditingController();
  final passcontroller = TextEditingController();

  final counter = ValueNotifier(0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counter.value = DateTime.now().second;
        },
        child: const Icon(Icons.add),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ValueListenableBuilder(
              valueListenable: emailcontroller,
              builder: (context, value, child) {
                return Text(
                  value.text,
                  style: const TextStyle(fontSize: 25),
                );
              },
            ),
            ValueListenableBuilder(
              valueListenable: counter,
              builder: (context, value, child) {
                return Text(
                  value.toString(),
                  style: const TextStyle(fontSize: 25),
                );
              },
            ),
            const SizedBox(
              height: 30,
            ),
            // Text(
            //   emailcontroller.text,
            //   style: const TextStyle(fontSize: 25),
            // ),
            TextField(
              controller: emailcontroller,
              // onChanged: (value) {
              // //   setState(() {});
              //   // provider.setEmail = value;
              // },
              decoration: const InputDecoration(
                hintText: 'Email',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              controller: passcontroller,
              onChanged: (value) {
                // provider.setPassword = value;
              },
              decoration: const InputDecoration(
                hintText: 'Password',
                border: OutlineInputBorder(),
              ),
            ),
            // ElevatedButton(
            //   onPressed: () {
            //     provider.login(
            //       emailcontroller.text,passcontroller.text
            //     );
            //   },
            //   child: const Text('Login'),
            // )
          ],
        ),
      ),
    );
  }
}
