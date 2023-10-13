import 'package:flutter/material.dart';
import 'package:my_first_app/api_services/firbase_api.dart';
import 'package:my_first_app/my_todo/todo_screen.dart';
import 'package:my_first_app/providers/auth_provider.dart';
import 'package:my_first_app/screens/login_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  late AuthProvider provider;
  @override
  void initState() {
    super.initState();
  }

  final emailcontroller = TextEditingController();
  final passcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Signup'),
        centerTitle: true,
        backgroundColor: Colors.cyan,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 30,
            ),
            TextFormField(
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Email is required';
                }
                return null;
              },
              controller: emailcontroller,
              decoration: const InputDecoration(
                hintText: 'Email',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Password is required';
                }
                return null;
              },
              controller: passcontroller,
              decoration: const InputDecoration(
                hintText: 'Password',
                border: OutlineInputBorder(),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                FirebaseApi.instance
                    .signUp(emailcontroller.text, passcontroller.text)
                    .then((value) {
                  if (value != null) {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const TodoScreen(),
                        ),
                        (route) => false);
                  }
                });
              },
              child: const Text('Signup'),
            ),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginFirebaseScreen(),
                    ),
                    (route) => false);
              },
              child: const Text('Already have an account ? Login'),
            ),
          ],
        ),
      ),
    );
  }
}
