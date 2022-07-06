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
        body: Container(
          color: Colors.white,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton.icon(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.white),
                        foregroundColor:
                            MaterialStateProperty.all(Colors.black)),
                    onPressed: () {},
                    icon: Icon(Icons.send_outlined),
                    label: Text('Send')),
                ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.white),
                        foregroundColor:
                            MaterialStateProperty.all(Colors.black)),
                    // style: ElevatedButton.styleFrom(
                    //   // shape: CircleBorder(
                    //   //   side: BorderSide(colors.red)
                    //   // )
                    //   // onSurface: Colors.red,
                    //   // minimumSize: Size(300, 100)
                    //   // textStyle: TextStyle(
                    //   //   fontSize: 20
                    //   // )
                    // ),
                    // onLongPress: null, will disabled the button
                    onPressed: () {},
                    child: Text('Elevated Button')),
                TextButton(
                    style: TextButton.styleFrom(
                      primary: Colors.black,
                      backgroundColor: Colors.white,
                      elevation: 5, //Shadow at the bottom
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(36)),
                    ),
                    onPressed: () {},
                    child: Text('Text Button')),
                OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      primary: Colors.black,
                      backgroundColor: Colors.white,
                      elevation: 5, //Shadow at the bottom
                      side: BorderSide(color: Colors.blue, width: 5),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(36)),
                    ),
                    onPressed: () {},
                    child: Text('Outlined Button'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
