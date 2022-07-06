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
      home: DefaultTabController(
          length:
              3, // we select 3 so we can only specify 3 tabbar and 3 tabbarview
          child: Scaffold(
            appBar: AppBar(
              title: Text('Tab Bar'),
              bottom: TabBar(
                // isScrollable: true,
                indicatorColor: Colors.black38,
                indicatorSize: TabBarIndicatorSize.tab,
                labelColor: Colors.black38,
                unselectedLabelColor: Colors.white,
                indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.yellow[400]),
                // ignore: prefer_const_literals_to_create_immutables
                tabs: [
                  Tab(
                    icon: Icon(Icons.directions),
                    text: 'Direction',
                  ),
                  Tab(
                    icon: Icon(Icons.directions_bike),
                    text: 'Bike',
                  ),
                  Tab(
                    icon: Icon(Icons.directions_car),
                    text: 'Car',
                  ),
                ],
              ),
            ),
            body: TabBarView(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Center(child: Text('It is Direction')),
                Center(child: Text('It is Direction Bike')),
                Center(child: Text("It is Direction Car")),
              ],
            ),
          )),
    );
  }
}
