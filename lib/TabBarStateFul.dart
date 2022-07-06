// ignore_for_file: unnecessary_const, prefer_const_constructors, file_names

// import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('TabBar StateFul'),
          bottom: TabBar(
            controller: _tabController,
            // ignore: prefer_const_literals_to_create_immutables
            tabs: [
              Tab(icon: Icon(Icons.directions)),
              Tab(icon: Icon(Icons.dark_mode)),
              Tab(icon: Icon(Icons.directions_bike)),
            ],
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Center(child: Text('This is Direction')),
            Center(child: Text('This is Dark Mode')),
            Center(child: Text('This is Direction bike')),
          ],
        ),
      ),
    );
  }
}
