// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //Bottom Sheet
  _bottomSheet() {
    showModalBottomSheet(
        context: context,
        builder: (context) => Container(
              height: 100,
              //width don't work as its take the whole screen
              // width: 100,
              color: Colors.green,
              child: Text('Bottom Sheet'),
            ));
  }

  //General Dialog
  _showGeneralDialog() {
    //gets the whole screen of mobile
    showGeneralDialog(
        context: context,
        pageBuilder: (context, animation1, animation2) => Container(
              color: Colors.green,
              width: double.infinity,
              height: double.infinity,
            ));
  }

  //Custom Dialog
  _showCustomDialog() {
    showDialog(
        context: context,
        builder: (context) => Dialog(
              // elevation: 0,
              // backgroundColor: Colors.transparent,
              child: Container(
                //double.infinity, gets the whole screen
                height: double.infinity,
                width: double.infinity,
                color: Colors.green,
                child: Stack(
                  children: [
                    Positioned(
                      top: 200,
                      left: 50,
                      child: Container(
                        height: 200,
                        width: 200,
                        color: Colors.yellow,
                      ),
                    ),
                    Positioned(
                      bottom: 450,
                      right: 80,
                      child: Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.blue,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ));
  }

  //Simple Dialog
  _showSimpleDialog() {
    showDialog(
        context: context,
        builder: (context) => SimpleDialog(
              title: Text('Simple Dialog'),
              children: [
                //Option 1
                SimpleDialogOption(
                  onPressed: () {
                    print('Option 1');
                  },
                  child: Text('Option 1'),
                ),

                //Option 1
                SimpleDialogOption(
                  onPressed: () {
                    print('Option 2');
                  },
                  child: Text('Option 2'),
                ),

                //Option 1
                SimpleDialogOption(
                  onPressed: () {
                    print('Option 3');
                  },
                  child: Text('Option 3'),
                )
              ],
            ));
  }

  // Alert Dialog
  _showDialog() {
    showDialog(
        //alert still there even when you tap of the screen
        barrierDismissible: false,
        context: context,
        builder: (context) => AlertDialog(
              title: Text('Alert'),
              content: Text('Do no wanna Cancel or Continue'),
              // backgroundColor: Colors.blue,
              // shape: CircleBorder(),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              actions: [
                TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text('Cancel')),
                TextButton(onPressed: () {}, child: Text('Continue'))
              ],
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Demo App'),
      ),
      body: Column(
        children: [
          Center(
            child: ElevatedButton(
              onPressed: _showDialog,
              child: Text('Show Dialog'),
            ),
          ),

          //Simple Dialog
          Center(
            child: ElevatedButton(
              onPressed: _showSimpleDialog,
              child: Text('Simple Dialog'),
            ),
          ),

          //Custom Dialog
          Center(
            child: ElevatedButton(
              onPressed: _showCustomDialog,
              child: Text('Custom Dialog'),
            ),
          ),

          //General Dialog
          Center(
            child: ElevatedButton(
              onPressed: _showGeneralDialog,
              child: Text('General Dialog'),
            ),
          ),

          //Bottom Sheet
          Center(
            child: ElevatedButton(
              onPressed: _bottomSheet,
              child: Text('Bottom Sheet'),
            ),
          ),
        ],
      ),
    );
  }
}
