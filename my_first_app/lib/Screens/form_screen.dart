import 'dart:developer';

import 'package:flutter/material.dart';

class FormScreen extends StatefulWidget {
  const FormScreen({super.key});

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  final _formkey = GlobalKey<FormState>();
  String? priceError;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form'),
      ),
      body: Form(
        key: _formkey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const AppTextField(
              labeltext: 'Enter product',
              errortext: 'this product is required',
            ),
            const SizedBox(
              height: 15,
            ),
            AppTextField(
              labeltext: 'Enter price',
              errortext: 'this price is required',
              customError: priceError,
              onchanged: (value) {
                final val = int.tryParse(value);
                if (val == null) {
                  priceError = 'Entered value in valid';
                } else {
                  priceError = null;
                }
                setState(() {});
              },
            ),
            const SizedBox(
              height: 15,
            ),
            const AppTextField(
              labeltext: 'name',
            ),
            ElevatedButton(
                onPressed: () {
                  if (_formkey.currentState!.validate()) {
                    log('Product Added');
                  }
                },
                child: const Text('Add'))
          ],
        ),
      ),
    );
  }
}

class AppTextField extends StatelessWidget {
  const AppTextField({
    super.key,
    required this.labeltext,
    this.padding,
    this.controller,
    this.errortext,
    this.customError,
    this.onchanged,
    this.onTap,
  });

  final TextEditingController? controller;
  final String? labeltext;
  final EdgeInsetsGeometry? padding;
  final String? errortext;
  final String? customError;
  final ValueChanged<String>? onchanged;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: TextFormField(
        onTap: onTap,
        onChanged: onchanged,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        validator: (value) {
          if (value!.isEmpty) {
            return errortext;
          }
          return customError;
        },
        controller: controller,
        decoration: InputDecoration(
          labelText: labeltext,
          border: const OutlineInputBorder(),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.amber),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black),
          ),
        ),
      ),
    );
  }
}
