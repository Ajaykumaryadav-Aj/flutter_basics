import 'package:flutter/material.dart';

class Heropage extends StatefulWidget {
  const Heropage({super.key});

  @override
  State<Heropage> createState() => _HeropageState();
}

class _HeropageState extends State<Heropage> {
  bool changed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animation Screen'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // GestureDetector(
          //   onTap: () {
          //     setState(() {
          //       changed = !changed;
          //     });

          //     // Navigator.push(
          //     //     context,
          //     //     MaterialPageRoute(
          //     //       builder: (context) => const NewScreen(),
          //     //     ));
          //   },
          //   child: Hero(
          //       tag: 'dash',
          //       child: CircleAvatar(
          //         radius: changed ? 20 : 60,
          //         child: Image.network(
          //           'https://www.sportsadda.com/static-assets/waf-images/28/af/fc/16-9/nWA9qdC9pF.jpg?v=1.6&w=420%20420w',
          //           fit: BoxFit.fill,
          //           // height: double.infinity,
          //           // width: double.infinity,
          //         ),
          //       )),
          // ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {
                setState(() {
                  changed = !changed;
                });
              },
              child: AnimatedContainer(
                  height: changed ? 20 : 300,
                  width: changed ? 30 : 300,
                  duration: const Duration(seconds: 2),
                  child: Image.network(
                    'https://www.sportsadda.com/static-assets/waf-images/28/af/fc/16-9/nWA9qdC9pF.jpg?v=1.6&w=420%20420w',
                  )),
            ),
          ),
        ],
      ),
    );
  }
}

class NewScreen extends StatelessWidget {
  const NewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Hero(
          tag: 'dash',
          child: Image.network(
            'https://www.sportsadda.com/static-assets/waf-images/28/af/fc/16-9/nWA9qdC9pF.jpg?v=1.6&w=420%20420w',
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
          )),
    );
  }
}
