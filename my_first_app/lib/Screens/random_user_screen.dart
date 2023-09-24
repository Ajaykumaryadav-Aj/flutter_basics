import 'package:flutter/material.dart';
import 'package:my_first_app/api_services/random_user_api.dart';
import 'package:my_first_app/api_services/user_service.dart';

class RandomUserScreen extends StatefulWidget {
  const RandomUserScreen({super.key});

  @override
  State<RandomUserScreen> createState() => _RandomUserScreenState();
}

class _RandomUserScreenState extends State<RandomUserScreen> {
  final service = UserService();
  bool isLoading = true;
  // RandomUse? user;

  @override
  void initState() {
    super.initState();
  }
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Random screen'),
      ),
      body: FutureBuilder(
      
        builder: (BuildContext context, AsyncSnapshot<RandomUser?> snapshot) {
          return !snapshot.hasData
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : !snapshot.hasData && snapshot.data == null
              ?const Center(child: Text('something is wrong'),)
          :Column(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(snapshot.data!.images.medium),
              ),
              Text(snapshot.data!.name.title),
            ],
          );
        },
      ),
    );
  }
}
