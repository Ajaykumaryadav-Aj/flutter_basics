import 'package:flutter/material.dart';

List<Map<String, dynamic>> tablelist = [
  {'name': 'ajay', 'age': '20'},
  {'name': 'ajay', 'age': '20'},
  {'name': 'ajay', 'age': '20'},
  {'name': 'ajay', 'age': '20'},
  {'name': 'ajay', 'age': '20'},
  {'name': 'ajay', 'age': '20'},
  {'name': 'rahul', 'age': '20'},
  {'name': 'rahul', 'age': '20'},
  {'name': 'rahul', 'age': '20'},
  {'name': 'rahul', 'age': '20'},
  {'name': 'Kumar', 'age': '18'},
  {'name': 'Kumar', 'age': '18'},
  {'name': 'Kumar', 'age': '18'},
  {'name': 'Kumar', 'age': '18'},
  {'name': 'rahul', 'age': '20'},
  {'name': 'rahul', 'age': '20'},
  {'name': 'rahul', 'age': '20'},
  {'name': 'rahul', 'age': '20'},
  {'name': 'Kumar', 'age': '18'},
  {'name': 'rahul', 'age': '20'},
  {'name': 'rahul', 'age': '20'},
  {'name': 'Kumar', 'age': '18'},
  {'name': 'rahul', 'age': '20'},
  {'name': 'rahul', 'age': '20'},
  {'name': 'Kumar', 'age': '18'},
  {'name': 'rahul', 'age': '20'},
  {'name': 'rahul', 'age': '20'},
  {'name': 'Kumar', 'age': '18'},
];

class ListviewScreen extends StatefulWidget {
  const ListviewScreen({super.key});

  @override
  State<ListviewScreen> createState() => _ListviewScreenState();
}

class _ListviewScreenState extends State<ListviewScreen> {
  List<Map<String, dynamic>> apilist = [];

  Future<void> getList({int limit = 0, int offset = 20}) async {
    setState(() {
      loader = true;
    });
    await Future.delayed(const Duration(seconds: 3));
    apilist = apilist + tablelist.getRange(limit, offset).toList();
    setState(() {
      loader = false;
    });
  }

  bool loader = false;

  @override
  void initState() {
    getList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listview screen'),
      ),
      body: Scrollbar(
        thickness: 11,
        interactive: true,
        trackVisibility: true,
        thumbVisibility: true,
        scrollbarOrientation: ScrollbarOrientation.left,
        child: NotificationListener(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Text('My list table'),
                ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
                  shrinkWrap: true,
                  itemCount: apilist.length + (loader ? 1 : 0),
                  separatorBuilder: (context, index) {
                    return Container(
                      color: Colors.black,
                      height: 2,
                    );
                  },
                  itemBuilder: (context, index) {
                    return index + 1 == apilist.length
                        ? const Center(
                            child: CircularProgressIndicator(),
                          )
                        : Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 40, vertical: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(apilist[index]['name']),
                                Text(apilist[index]['age']),
                              ],
                            ),
                          );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
