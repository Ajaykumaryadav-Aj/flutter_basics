import 'package:flutter/material.dart';
import 'package:my_first_app/utils/utils.dart';

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
  int limit = 20;
  int myoffset = 0;
  bool paginate = true;

  Future<void> getList({int limit = 20, int offset = 0}) async {
    if (!paginate) return;

    setState(() {
      loader = true;
    });
    await Future.delayed(const Duration(seconds: 2));
    List<Map<String, dynamic>> templist =
        apilist + tablelist.getRange(offset, limit).toList();
    apilist += templist;
    myoffset = offset + limit;
    setState(() {
      if (templist.length < 20) paginate = false;
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
          onNotification: (notification) => Utils.scrollNotification(
              notification, () => getList(offset: myoffset)),
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
                    return index == apilist.length
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
