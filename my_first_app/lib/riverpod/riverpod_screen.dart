import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_first_app/api_services/user_service.dart';
import 'package:my_first_app/riverpod/river_provider.dart';

class RandomUserScreen extends ConsumerStatefulWidget {
  const RandomUserScreen({super.key});

  @override
  ConsumerState<RandomUserScreen> createState() => _RandomUserScreenState();
}

class _RandomUserScreenState extends ConsumerState<RandomUserScreen> {
  final service = UserService();
  bool isLoading = true;

  late String myValue;

  late UserProvider provider;

  @override
  void initState() {
    provider = ref.read(userProvider);
    provider.getRandomUser().then((user) {
      setState(() {
        isLoading = false;
        myValue = '${user?.name.title} ${user?.name.first} ${user?.name.last}';
      });
    });
    super.initState();
  }

  
  @override
  Widget build(BuildContext context) {
    final user = ref.watch(userProvider).randomUser;

    return Scaffold(
      appBar: AppBar(title: const Text('Random User')),
      floatingActionButton: FloatingActionButton(
        onPressed: provider.getRandomUser,
        child: const Text('NEW'),
      ),
      body: RefreshIndicator(
        color: Colors.deepOrange,
        backgroundColor: Colors.black,
        edgeOffset: 200,
        onRefresh: provider.getRandomUser,
        child: ListView(
          children: [
            isLoading
                ? const Center(child: CircularProgressIndicator())
                : user == null
                    ? const Center(child: Text('something went wrong'))
                    : Center(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              radius: 100,
                              backgroundImage: NetworkImage(
                                user.images.large,
                              ),
                            ),
                            const SizedBox(height: 10),
                            Text(
                              myValue,
                              style: const TextStyle(fontSize: 20),
                              textAlign: TextAlign.center,
                            ),
                            Wrap(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      myValue =
                                          '${user.name.title} ${user.name.first} ${user.name.last}';
                                    });
                                  },
                                  child: const Padding(
                                    padding: EdgeInsets.all(20),
                                    child: Text(
                                      'Name',
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      myValue =
                                          '${user.location.street.name} ${user.location.city} ${user.location.state} ${user.location.country}';
                                    });
                                  },
                                  child: const Padding(
                                    padding: EdgeInsets.all(20),
                                    child: Text(
                                      'Location',
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      myValue = user.phone;
                                    });
                                  },
                                  child: const Padding(
                                    padding: EdgeInsets.all(20),
                                    child: Text(
                                      'Contact',
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
          ],
        ),
      ),
      
    );
  }
}






























