// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flower_app/shared/colors.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(

              crossAxisCount: 2,
              childAspectRatio: 3 / 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 33),
              itemCount: 4,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              color: Colors.black,
            );
          }),
      drawer: Column(
        children: [
          Drawer(
            child: Column(
              children: [
                UserAccountsDrawerHeader(
                  accountName: Text('Nawaf helabi'),
                  accountEmail: Text('nawafbinhelabi@gmai.com'),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/IMG_9361.jpg'),
                          fit: BoxFit.cover)),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: AssetImage('assets/group.jpg'),
                  ),
                ),
                ListTile(
                    title: Text("Home"),
                    leading: Icon(Icons.home),
                    onTap: () {}),
                ListTile(
                    title: Text("My products"),
                    leading: Icon(Icons.add_shopping_cart),
                    onTap: () {}),
                ListTile(
                    title: Text("About"),
                    leading: Icon(Icons.help_center),
                    onTap: () {}),
                ListTile(
                    title: Text("Logout"),
                    leading: Icon(Icons.exit_to_app),
                    onTap: () {}),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 12),
            child: Text("Developed by Nawaf Helabi © 2024",
                style: TextStyle(fontSize: 16)),
          )
        ],
      ),
      appBar: AppBar(
        backgroundColor: appbarGreen,
        title: Text(
          "Home",
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          Row(
            children: [
              Container(
                child: Stack(
                  children: [
                    Positioned(
                      top: 0,
                      child: Container(
                          child: Text(
                            "8",
                            style:
                                TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                          ),
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: Color.fromARGB(211, 164, 255, 193),
                              shape: BoxShape.circle)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.add_shopping_cart,
                            color: Colors.white,
                          )),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 12),
                child: Text(
                  "\$ 128",
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
