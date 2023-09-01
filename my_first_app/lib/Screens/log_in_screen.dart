import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(108, 339, 109, 0),
          child: Column(
            children: [
              Container(
                color: const Color.fromARGB(255, 3, 24, 62),
                width: 173,
                height: 56,
                child: const Padding(
                  padding: EdgeInsets.fromLTRB(16, 19, 26, 0),
                  child: Text(
                    'My Bottom',  
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: Checkbox.width),
                  ),
                ),
              ),
              Column(
                children: [
                  Container(
                    height: 150,
                    width: 100,
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(94, 100, 255, 1),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.add_circle,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
