// import 'dart:js_util';

import 'package:flutter/material.dart';
import 'package:my_first_app/component/app_drawer_custom.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: (Colors.white),
      child: Column(
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
          const Column(
            children: [
              Row(
                children: [
                  DrawerIcon(
                      src:
                          "https://rukminim2.flixcart.com/www/300/42/promos/05/07/2019/37c19766-0af6-45c8-866a-720adfa534e2.png?q=40",
                      text: 'Super coin Zone'),
                  Text('Super coin Zone'),
                ],
              ),
              Row(
                children: [
                  DrawerIcon(
                    src:
                        "https://rukminim2.flixcart.com/www/300/42/promos/11/07/2018/70e5346e-fce4-4718-8e56-27be8492faa5.png?q=40",
                    text: ('Flipkart plus zone'),
                  ),
                  Text('flipkart plus zone'),
                ],
              ),
              Divider(),
              Row(
                children: [
                  DrawerIcon(
                      src:
                          "https://rukminim2.flixcart.com/www/300/42/promos/13/11/2019/d19caf2b-e593-4e6b-93e5-a6c388210736.png?q=40",
                      text: 'Category'),
                  Text('Category'),
                ],
              ),
              Row(
                children: [
                  DrawerIcon(
                      src:
                          "https://rukminim2.flixcart.com/www/300/42/promos/26/01/2022/4495e6c3-7a67-4e74-b754-31aa3bd64272.png?q=40",
                      text: 'Trending Stores'),
                  Text('Trending Stores'),
                ],
              ),
              Row(
                children: [
                  DrawerIcon(
                      src:
                          "https://rukminim2.flixcart.com/www/300/42/promos/15/06/2020/3c2eff2c-685f-4002-b3c9-d6942563af76.jpg?q=40",
                      text: 'More on flipkart'),
                  Text('More on flipkart')
                ],
              ),
              Divider(),
              Row(
                children: [
                  DrawerIcon(
                      src:
                          'https://rukminim2.flixcart.com/www/300/42/promos/01/08/2019/23d1528b-d57d-440e-a21f-f374f518b6ed.png?q=40',
                      text: 'choose languge'),
                  Text('choose language'),
                ],
              ),
              Divider(),
              Row(
                children: [
                  DrawerIcon(
                      src:
                          'https://rukminim2.flixcart.com/www/300/42/promos/08/04/2016/a12880b1-9c2b-4b4b-9029-31ba9ff666bf.png?q=40',
                      text: 'offer zone'),
                  Text('offer zone'),
                ],
              ),
              Row(
                children: [
                  DrawerIcon(
                      src:
                          "https://rukminim2.flixcart.com/www/300/42/promos/18/01/2019/c79d21c6-b201-42a7-b37c-6405c6c4fbf5.png?q=40",
                      text: 'sell on flipkart'),
                  Text('Sell on Flipkart'),
                ],
              ),
              Divider(),
              Row(
                children: [
                  DrawerIcon(
                      src:
                          "https://rukminim2.flixcart.com/www/300/42/promos/10/03/2017/b7a79d1a-e088-4c4b-951f-9b8214719cc9.png?q=40",
                      text: 'My Order'),
                  Text('My Order'),
                ],
              ),
              Row(
                children: [
                  DrawerIcon(
                      src:
                          "https://rukminim2.flixcart.com/www/300/42/promos/31/08/2016/3afaefd4-3961-4cac-921c-b9517c96ad47.png?q=40",
                      text: "Coupon"),
                  Text('Coupon'),
                ],
              ),
              Row(
                children: [
                  DrawerIcon(
                      src:
                          "https://rukminim2.flixcart.com/www/300/42/promos/10/03/2017/920f4fcd-8977-43a9-9014-abcad558de8d.png?q=40",
                      text: 'My cart'),
                  Text('My Cart'),
                ],
              ),
              Row(
                children: [
                  DrawerIcon(
                      src:
                          "https://rukminim2.flixcart.com/www/300/42/promos/10/03/2017/1f81361d-9a8e-494a-bd15-6d647c9bd8a7.png?q=40",
                      text: 'My Wishlist'),
                  Text('My wishlist'),
                ],
              ),
              Row(
                children: [
                  DrawerIcon(
                      src:
                          'https://rukminim2.flixcart.com/www/300/42/promos/07/04/2016/c35cca9e-2d7a-4583-9770-32a97ddf1c9b.png?q=40',
                      text: 'My Account'),
                  Text('My Account'),
                ],
              ),
              Row(
                children: [
                  DrawerIcon(
                      src:
                          "https://rukminim2.flixcart.com/www/300/42/promos/10/03/2017/f93182c9-5b3e-4f06-950d-c41745611f00.png?q=40",
                      text: "My Notification"),
                  Text('My Notification'),
                ],
              ),
              Divider(),
              Row(
                children: [
                  Text('Help centre\nLegal'),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
