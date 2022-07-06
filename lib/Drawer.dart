// ignore_for_file: unnecessary_const, prefer_const_constructors, file_names

// import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        //endDrawer will move drawer from right to left
        drawer: Drawer(
          child: Container(
            color: Colors.blue[300],
            child: Column(
              // padding: EdgeInsets.zero,
              children: [
                //here container replaced with sizedBox
                SizedBox(
                  // width: double.infinity,
                  child: UserAccountsDrawerHeader(
                    currentAccountPicture: CircleAvatar(),
                    decoration: BoxDecoration(color: Colors.green),
                    accountName: Text('M Waleed Khan'),
                    accountEmail: Text('waleedkhan@gmail.com'),
                  ),
                ),
                ListTile(
                  title: Text('Home'),
                  onTap: () {},
                ),
                ListTile(
                  title: Text('Services'),
                  onTap: () {},
                ),
                ListTile(
                  title: Text('About Us'),
                  onTap: () {},
                )
              ],
            ),
          ),
        ),
        body: Builder(
          builder: (BuildContext context) {
            return Center(
              child: ElevatedButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                child: Text('Open Drawer'),
              ),
            );
          },
        ),
      ),
    );
  }
}
