import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginPhoneNumber extends StatefulWidget {
  const LoginPhoneNumber({super.key});

  @override
  State<LoginPhoneNumber> createState() => _LoginPhoneNumberState();
}

class _LoginPhoneNumberState extends State<LoginPhoneNumber> {
  final phoneNumbercontroller = TextEditingController();
  bool loading = false;
  final auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('login with phone number'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            const SizedBox(height: 30),
            TextFormField(
              keyboardType: TextInputType.number,
              controller: phoneNumbercontroller,
              decoration: const InputDecoration(hintText: '+233 445 221'),
            ),
            const SizedBox(height: 20),
            TextButton(
              onPressed: () {
                setState(() {
                  loading = true;
                });
                auth.verifyPhoneNumber(
                  phoneNumber: phoneNumbercontroller.text,
                  verificationCompleted: (_) {
                    log('auth success');
                    setState(() {
                      loading = false;
                    });
                  },
                  verificationFailed: (e) {
                    setState(() {
                      loading = false;
                    });
                  },
                  codeSent: (String verificationId, int? token) {
                    setState(() {
                      loading = false;
                    });
                  },
                  codeAutoRetrievalTimeout: (String verificationId) {
                    setState(() {
                      loading = false;
                    });
                  },
                );
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //       builder: (context) => const VerifycodeScreen(verificationId: 'verificationId')
                //     ));
              },
              child: const Text('Login'),
            )
          ],
        ),
      ),
    );
  }
}

// class VerifycodeScreen extends StatefulWidget {
//   final String verificationId;
//   const VerifycodeScreen({super.key, required this.verificationId});

//   @override
//   State<VerifycodeScreen> createState() => _VerifycodeScreenState();
// }

// class _VerifycodeScreenState extends State<VerifycodeScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Verify '),
//       ),
//       body: const Column(
//         children: [],
//       ),
//     );
//   }
// }
