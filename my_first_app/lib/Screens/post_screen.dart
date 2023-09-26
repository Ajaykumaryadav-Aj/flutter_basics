import 'package:flutter/material.dart';
import 'package:my_first_app/models/post_model.dart';

class PostScreen extends StatefulWidget {
  const PostScreen({super.key});

  @override
  State<PostScreen> createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  List<Post>? posts;
  bool isloading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rest api screen'),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
         return Container(
            child: const Text('data'),
          );
        },
      ),
    );
  }
}
