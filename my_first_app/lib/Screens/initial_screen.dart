
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:my_first_app/my_todo/todo_screen.dart';
import 'package:my_first_app/screens/login_screen.dart';

class InitialScreen extends StatelessWidget {
  const InitialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (BuildContext context, AsyncSnapshot<User?> snapshot) {
        debugPrint(snapshot.data.toString());
        return snapshot.data == null
            ? const LoginFirebaseScreen()
            : const TodoScreen();
      },
    );
  }
}
