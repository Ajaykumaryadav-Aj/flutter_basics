import 'package:flutter/material.dart';

class PageviewScreen extends StatefulWidget {
  const PageviewScreen({super.key});

  @override
  State<PageviewScreen> createState() => _PageviewScreenState();
}

class _PageviewScreenState extends State<PageviewScreen> {
  int currentindex = 0;
  final controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pageview Screen'),
      ),
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.black,
          currentIndex: currentindex,
          onTap: (value) {
            currentindex = value;
            setState(() {});
            controller.animateToPage(value,
                duration: const Duration(seconds: 1), curve: Curves.easeOut);
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.phone), label: 'Phone'),
            BottomNavigationBarItem(
                icon: Icon(Icons.message), label: 'Message'),
            BottomNavigationBarItem(
                icon: Icon(Icons.browse_gallery), label: 'Gallary')
          ]),
      body: PageView(
        controller: controller,
        // scrollDirection: Axis.vertical,
        children: [
          Column(
            children: [
              Container(
                alignment: Alignment.center,
                color: Colors.red,
                child: const Text('page1'),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width,
                // width: 200,
                child: PageView(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                        color: Colors.pink,
                        image: DecorationImage(
                            image: NetworkImage(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRosf6SboIOXr0jlI4zPENgKHR6HVTAON-87A&usqp=CAU'),
                            fit: BoxFit.fill),
                      ),
                      child: const Text(
                        'Picture 1',
                        style: TextStyle(color: Colors.amber),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                        color: Colors.pink,
                        image: DecorationImage(
                            image: NetworkImage(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTP7y6bgXj5U40hS61aafOByt9zbB3GlFv__w&usqp=CAU'),
                            fit: BoxFit.fill),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                        color: Colors.pink,
                        image: DecorationImage(
                            image: NetworkImage(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS5_hGWXzdflYWMrWl6Xfz2QQ_M3fn3mUP2M3fPDut2L1z_d2ZANt8wKCnBSRREhP9VNAI&usqp=CAU'),
                            fit: BoxFit.fill),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                        color: Colors.pink,
                        image: DecorationImage(
                            image: NetworkImage(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQBBnwp3PGdWih6YNgx0DBCDA6Fs3IVlCiWZw&usqp=CAU'),
                            fit: BoxFit.fill),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          Container(
              alignment: Alignment.center,
              color: Colors.cyan,
              child: const Text('page2')),
          Container(
              alignment: Alignment.center,
              color: Colors.green,
              child: const Text('page3')),
        ],
      ),
    );
  }
}
