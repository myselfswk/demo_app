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
  //controller to get the user input
  // late final TextEditingController _controller;
  var str = '';
  FocusNode first = FocusNode();
  FocusNode second = FocusNode();

  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    // The initial value for the inputfield
    // _controller = TextEditingController(text: 'Initial Value');
    // _controller = TextEditingController();
  }

  @override
  void dispose() {
    // ignore: todo
    // TODO: implement dispose
    super.dispose();
    // _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Demo'),
        ),
        body: Center(
            child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Text('Input Field'),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: TextField(
                  onChanged: (value) {
                    str = value;
                  },
                  textCapitalization: TextCapitalization.words,
                  textAlign: TextAlign.justify,
                  // style: TextStyle(backgroundColor: Colors.blue),
                  // maxLines: 4,
                  focusNode: first,
                  decoration: InputDecoration(
                      //if we use prefixIcon, than the icon will merge with input field
                      icon: Icon(Icons.supervised_user_circle),
                      labelText: 'Username',
                      hintText: 'Username',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                  // autofocus: true,
                  // controller: _controller,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: TextField(
                  // onChanged: (value) {
                  //   str = value;
                  // },
                  focusNode: second,
                  keyboardType: TextInputType.phone,
                  obscureText: true, //secure input field text
                  decoration: InputDecoration(
                      //if we use prefixIcon, than the icon will merge with input field
                      icon: Icon(Icons.security),
                      labelText: 'Password',
                      hintText: 'Password',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                  // InputDecoration.collapsed(hintText: 'password'),
                  // controller: _controller,
                ),
              ),
            ],
          ),
        )),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            FocusScope.of(context).requestFocus(second);
            // Navigator.of(context)
            //     .push(MaterialPageRoute(builder: (context) => SecondPage(str)));
          },
          child: Icon(Icons.send),
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  final String userInput;
  // ignore: use_key_in_widget_constructors
  const SecondPage(this.userInput);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(userInput),
      ),
      body: Center(
        child: Text(userInput),
      ),
    );
  }
}
