import 'package:flutter/material.dart';

class SliverScreen extends StatelessWidget {
  const SliverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //   title: Text('kumar'),
        // ),
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              flexibleSpace: Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSP2kMOIn7mBcITS3ARPJdwUinFmfK6Mj1RJlD6DR84&s',
                  fit: BoxFit.fill),
              // toolbarHeight: 200,
              // collapsedHeight: 100,
              expandedHeight: 200,
              floating: true,
              pinned: true,
              snap: false,
              stretch: false,
              shadowColor: Colors.red,
              title: const Text(
                'Sliver Screen',
                style: TextStyle(color: Colors.amber),
              ),
            ),
            const SliverToBoxAdapter(
              child: Text('missed calls'),
            ),
            SliverList.builder(
              itemCount: 18,
              itemBuilder: (context, index) => const ListTile(
                leading: Icon(Icons.call),
                title: Text(
                  'Rahul',
                  style: TextStyle(fontSize: 20),
                ),
                subtitle: Text('8:00 pm'),
                trailing: Text(
                  "missed call",
                  style: TextStyle(fontSize: 14),
                ),
              ),
            ),
            // const SliverToBoxAdapter(),
          ],
        ),
      ),
    );
  }
}
