import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:my_first_app/api_services/firbase_api.dart';
import 'package:my_first_app/my_todo/todo_screen.dart';
import 'package:my_first_app/providers/auth_provider.dart';
import 'package:my_first_app/screens/signup_screen.dart';
import 'package:provider/provider.dart';

class LoginFirebaseScreen extends StatefulWidget {
  const LoginFirebaseScreen({super.key});

  @override
  State<LoginFirebaseScreen> createState() => _LoginFirebaseScreenState();
}

class _LoginFirebaseScreenState extends State<LoginFirebaseScreen> {
  late AuthProvider provider;
  @override
  void initState() {
    super.initState();
    provider = Provider.of<AuthProvider>(context, listen: false);
  }

  final emailcontroller = TextEditingController();
  final passcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
        centerTitle: true,
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
              onChanged: (value) {
                setState(() {});
                // provider.setEmail = value;
              },
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
              onChanged: (value) {
                // provider.setPassword = value;
              },
              decoration: const InputDecoration(
                hintText: 'Password',
                border: OutlineInputBorder(),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  FirebaseApi.instance.signInWithGoogle();
                },
                child: const Text('Login with Google')),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                FirebaseApi.instance
                    .login(emailcontroller.text, passcontroller.text);
              },
              child: const Text('Login'),
            ),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SignUpScreen(),
                    ),
                    (route) => false);
              },
              child: const Text('Don\t have an account ? sign up'),
            ),
          ],
        ),
      ),
    );
  }
}
