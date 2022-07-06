// ignore_for_file: unnecessary_const, prefer_const_constructors, prefer_typing_uninitialized_variables, unnecessary_new, file_names

// import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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
  // var dateTime;
  // var timeStamp;
  // var timeStampToDateTime;
  // var newDateTime;
  var selectedDate;
  var selectedTime;

  @override
  void initState() {
    super.initState();
    // dateTime = DateTime.now();
    // timeStamp = dateTime.millisecondsSinceEpoch;
    // timeStampToDateTime = DateTime.fromMillisecondsSinceEpoch(timeStamp);
    //'yyyy-MM-dd' we can change the settings
    // timeStampToDateTime = DateFormat('dd-MM-yyyy').format(dateTime);
    // timeStampToDateTime = DateFormat('yyyy-MM-dd HH:mm:ss').format(dateTime);
    // newDateTime = DateTime.parse(timeStampToDateTime);
    selectedDate = DateTime.now();
    selectedTime = TimeOfDay(hour: 23, minute: 23);
  }

//Select Date Method
  _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2000),
        lastDate: DateTime(2025));

    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

//Select Time Method
  _selectTime(BuildContext context) async {
    final TimeOfDay? picked =
        await showTimePicker(context: context, initialTime: selectedTime);

    if (picked != null && picked != selectedTime) {
      setState(() {
        selectedTime = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Flutter Demo'),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(DateFormat('dd-MM-yyyy').format(selectedDate)),
                ElevatedButton(
                    onPressed: () {
                      _selectDate(context);
                    },
                    child: Text('Select Date')),
                Text('----------------------------------------'),
                Text(
                    '${selectedTime.hour} Hour : ${selectedTime.minute} Minutes'),
                ElevatedButton(
                    onPressed: () {
                      _selectTime(context);
                    },
                    child: Text('Select Time')),
              ],
            ),
          )),
    );
  }
}
