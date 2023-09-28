import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class PickerScreen extends StatefulWidget {
  const PickerScreen({super.key});

  @override
  State<PickerScreen> createState() => _PickerScreenState();
}

class _PickerScreenState extends State<PickerScreen> {
  File? image;
  List<File> fileimagelist = [];

  void pick(ImageSource source) async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: source);
    if (pickedFile != null) {
      log(pickedFile.path, name: 'pickedfile');
      final imagefile = File(pickedFile.path);
      log(imagefile.toString(), name: 'imagefile');
      setState(() {
        image = imagefile;
      });
      final base64 = base64Encode(await pickedFile.readAsBytes());
      log(base64, name: 'based64 string');
    }
  }

  void pickmultiimage() async {
    final picker = ImagePicker();
    List<File> imagefiles = [];

    final pickedFiles = await picker.pickMultiImage();
    for (XFile e in pickedFiles) {
      imagefiles.add(File(e.path));
    }
    setState(() {
      fileimagelist.addAll(imagefiles);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('image picker screen'),
      ),
      body: 
      Column(
        children: [
          Wrap(
            children: List.generate(
              fileimagelist.length + 1,
              (index) => index == fileimagelist.length
                  ? GestureDetector(
                      onTap: pickmultiimage,
                      child: Container(
                        margin: const EdgeInsets.all(2),
                        height: 75,
                        width: 75,
                        color: const Color.fromARGB(255, 243, 224, 167),
                        child: image == null ? const Icon(Icons.add) : null,
                      ),
                    )
                  : Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.file(
                        fileimagelist[index],
                        fit: BoxFit.cover,
                        height: 75,
                        width: 75,
                      ),
                    ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          GestureDetector(
            onTap: () => pick(ImageSource.gallery),
            child: Center(
              child: Container(
                height: 100,
                width: 100,
                // color: const Color.fromARGB(255, 243, 222, 158),
                child: image == null ? const Icon(Icons.photo) : null,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 243, 222, 158),
                  image: image == null
                      ? null
                      : DecorationImage(
                          image: FileImage(image!), fit: BoxFit.cover),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
