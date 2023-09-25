import 'package:flutter/material.dart';
import 'package:my_first_app/api_services/user_service.dart';
import 'package:my_first_app/models/api_user_model.dart';

class ApiUserScreen extends StatefulWidget {
  const ApiUserScreen({super.key});

  @override
  State<ApiUserScreen> createState() => _ApiUserScreenState();
}

class _ApiUserScreenState extends State<ApiUserScreen> {
  final service = UserService();

  // @override
  // void initState() {
  //   super.initState();
  //   service.getUsersApi();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Api user'),
      ),
      body: FutureBuilder(
        future: service.getUsersApi(),
        builder: (BuildContext context, AsyncSnapshot<List<ApiUser>?> snapshot) {
          return !snapshot.hasData
              ? const Center(child: CircularProgressIndicator())
              : snapshot.hasError || snapshot.data == null
                  ? const Center(
                      child: Text('Something wrong'),
                    )
                  : ListView.separated(
                     itemCount: snapshot.data!.length,
                      separatorBuilder: (BuildContext context, int index) {
                        return const Divider();
                      },
                      itemBuilder: (BuildContext context, int index) {
                        return ListTile(
                          title: Text(snapshot.data![index].name),
                          subtitle: Text(snapshot.data![index].phone),
                          trailing: Text(snapshot.data![index].company.name),
                        );
                      },
                     
                    );
        },
      ),
    );
  }
}
