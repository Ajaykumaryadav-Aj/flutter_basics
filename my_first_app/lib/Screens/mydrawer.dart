// import 'dart:js_util';

import 'package:flutter/material.dart';

List<Map<String, dynamic>> imagelist = [
  {
    'src':
        "https://rukminim2.flixcart.com/www/300/42/promos/11/07/2018/70e5346e-fce4-4718-8e56-27be8492faa5.png?q=40",
    'text': 'Flipkart plus zone',
  },
  {
    'src':
        "https://rukminim2.flixcart.com/www/300/42/promos/13/11/2019/d19caf2b-e593-4e6b-93e5-a6c388210736.png?q=40",
    'text': 'Category',
  },
  {
    'src':
        "https://rukminim2.flixcart.com/www/300/42/promos/26/01/2022/4495e6c3-7a67-4e74-b754-31aa3bd64272.png?q=40",
    'text': 'Trending Stores',
  },
  {
    'src':
        "https://rukminim2.flixcart.com/www/300/42/promos/15/06/2020/3c2eff2c-685f-4002-b3c9-d6942563af76.jpg?q=40",
    'text': 'More on flipkart',
  },
  {
    'src':
        'https://rukminim2.flixcart.com/www/300/42/promos/01/08/2019/23d1528b-d57d-440e-a21f-f374f518b6ed.png?q=40',
    'text': 'choose languge'
  },
  {
    'src':
        'https://rukminim2.flixcart.com/www/300/42/promos/08/04/2016/a12880b1-9c2b-4b4b-9029-31ba9ff666bf.png?q=40',
    'text': 'offer zone',
  },
  {
    'src':
        "https://rukminim2.flixcart.com/www/300/42/promos/18/01/2019/c79d21c6-b201-42a7-b37c-6405c6c4fbf5.png?q=40",
    'text': 'sell on flipkart',
  },
  {
    'src':
        "https://rukminim2.flixcart.com/www/300/42/promos/10/03/2017/b7a79d1a-e088-4c4b-951f-9b8214719cc9.png?q=40",
    'text': 'My Order',
  },
  {
    'src':
        "https://rukminim2.flixcart.com/www/300/42/promos/31/08/2016/3afaefd4-3961-4cac-921c-b9517c96ad47.png?q=40",
    'text': "Coupon",
  },
  {
    'src':
        "https://rukminim2.flixcart.com/www/300/42/promos/10/03/2017/920f4fcd-8977-43a9-9014-abcad558de8d.png?q=40",
    'text': 'My cart',
  },
  {
    'src':
        "https://rukminim2.flixcart.com/www/300/42/promos/10/03/2017/1f81361d-9a8e-494a-bd15-6d647c9bd8a7.png?q=40",
    'text': 'My Wishlist',
  },
  {
    'src':
        "https://rukminim2.flixcart.com/www/300/42/promos/10/03/2017/1f81361d-9a8e-494a-bd15-6d647c9bd8a7.png?q=40",
    'text': 'My Wishlist',
  },
  {
    'src':
        'https://rukminim2.flixcart.com/www/200/28/promos/07/04/2016/c35cca9e-2d7a-4583-9770-32a97ddf1c9b.png?q=60',
    'text': 'My Account',
  },
  {
    'src':
        "https://rukminim2.flixcart.com/www/300/42/promos/10/03/2017/f93182c9-5b3e-4f06-950d-c41745611f00.png?q=40",
    'text': "My Notification"
  }
];

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: (Colors.white),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppBar(
            actions: [
              const SizedBox(
                height: 30,
                width: 30,
              ),
              Image.network(
                  "https://static-assets-web.flixcart.com/batman-returns/batman-returns/p/images/logo_lite-cbb357.png"),
            ],
            title: const Text(
              'Login & Signup',
              style: TextStyle(color: Colors.white),
            ),
            leading: const Icon(Icons.account_circle_sharp),

            // automaticallyImplyLeading: false,
          ),
          Column(
            children: List.generate(
              imagelist.length,
              (index) => Column(
                children: [
                  if ([
                    1,
                    4,
                    5,
                    7,
                    13,
                  ].contains(index))
                    const Divider(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Image.network(
                          imagelist[index]['src'],
                          height: 20,
                          width: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(imagelist[index]['text']),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Divider(),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Help Centre'),
          ),
          const Text('  Legal'),
        ],
      ),
    );
  }
}
//           const Column(
//             children: [
//               ImageNetworkDrawer(
          // src:
          //     "https://rukminim2.flixcart.com/www/300/42/promos/11/07/2018/70e5346e-fce4-4718-8e56-27be8492faa5.png?q=40",
          // text: ('Flipkart plus zone'),
//               ),
//               Divider(),
//               ImageNetworkDrawer(
//                   src:
//                       "https://rukminim2.flixcart.com/www/300/42/promos/13/11/2019/d19caf2b-e593-4e6b-93e5-a6c388210736.png?q=40",
//                   text: 'Category'),
//               ImageNetworkDrawer(
//                   src:
//                       "https://rukminim2.flixcart.com/www/300/42/promos/26/01/2022/4495e6c3-7a67-4e74-b754-31aa3bd64272.png?q=40",
//                   text: 'Trending Stores'),
//               ImageNetworkDrawer(
//                   src:
//                       "https://rukminim2.flixcart.com/www/300/42/promos/15/06/2020/3c2eff2c-685f-4002-b3c9-d6942563af76.jpg?q=40",
//                   text: 'More on flipkart'),
//               Divider(),
//               ImageNetworkDrawer(
//                   src:
//                       'https://rukminim2.flixcart.com/www/300/42/promos/01/08/2019/23d1528b-d57d-440e-a21f-f374f518b6ed.png?q=40',
//                   text: 'choose languge'),
//               Divider(),
//               ImageNetworkDrawer(
//                   src:
//                       'https://rukminim2.flixcart.com/www/300/42/promos/08/04/2016/a12880b1-9c2b-4b4b-9029-31ba9ff666bf.png?q=40',
//                   text: 'offer zone'),
//               ImageNetworkDrawer(
//                   src:
//                       "https://rukminim2.flixcart.com/www/300/42/promos/18/01/2019/c79d21c6-b201-42a7-b37c-6405c6c4fbf5.png?q=40",
//                   text: 'sell on flipkart'),
//               Divider(),
//               ImageNetworkDrawer(
//                   src:
//                       "https://rukminim2.flixcart.com/www/300/42/promos/10/03/2017/b7a79d1a-e088-4c4b-951f-9b8214719cc9.png?q=40",
//                   text: 'My Order'),
//               ImageNetworkDrawer(
//                   src:
//                       "https://rukminim2.flixcart.com/www/300/42/promos/31/08/2016/3afaefd4-3961-4cac-921c-b9517c96ad47.png?q=40",
//                   text: "Coupon"),
//               ImageNetworkDrawer(
//                   src:
//                       "https://rukminim2.flixcart.com/www/300/42/promos/10/03/2017/920f4fcd-8977-43a9-9014-abcad558de8d.png?q=40",
//                   text: 'My cart'),
//               ImageNetworkDrawer(
//                   src:
//                       "https://rukminim2.flixcart.com/www/300/42/promos/10/03/2017/1f81361d-9a8e-494a-bd15-6d647c9bd8a7.png?q=40",
//                   text: 'My Wishlist'),
//               ImageNetworkDrawer(
//                   src:
//                       'https://rukminim2.flixcart.com/www/300/42/promos/07/04/2016/c35cca9e-2d7a-4583-9770-32a97ddf1c9b.png?q=40',
//                   text: 'My Account'),
//               ImageNetworkDrawer(
//                   src:
//                       "https://rukminim2.flixcart.com/www/300/42/promos/10/03/2017/f93182c9-5b3e-4f06-950d-c41745611f00.png?q=40",
//                   text: "My Notification"),
//               Divider(),
//             ],
//           ),
//           const Padding(
//             padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
//             child: Text('Help centre'),
//           ),
//           const Padding(
//             padding: EdgeInsets.all(8.0),
//             child: Text('Legal'),
//           ),
//         ],
//       ),
  

// class ImageNetworkDrawer extends StatelessWidget {
//   final String src;

//   final String text;

//   final double margin;

//   const ImageNetworkDrawer(
//       {super.key, required this.src, required this.text, this.margin = 5});

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: [
//         const Padding(
//           padding: EdgeInsets.fromLTRB(3, 35, 0, 0),
//         ),
//         Image.network(
//           src,
//           height: 15,
//           width: 50,
//         ),
//         Text(text),
//       ],
//     );
//   }
// }
