// ignore_for_file: file_names

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
  //For String
  var selected = "One";
  final dropdownList = <String>['One', 'Two', 'Three', 'Four'];

  //For Numbers
  var selectedNum = 1;
  final dropdownListNum = <int>[1, 2, 3, 4];

  var isChecked = false;

  var gender = 'male';

  var isOn = false;

  final _globalKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Demo App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Form(
              key: _globalKey,
              child: TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please Enter Some Text';
                  }
                  return null;
                },
              ),
            ),

            ElevatedButton(
                onPressed: () {
                  _globalKey.currentState!.validate();
                },
                child: const Text('Validate')),

            Switch(
              value: isOn,
              onChanged: (bool? val) {
                if (val != null) {
                  setState(() {
                    isOn = val;
                  });
                }
              },
            ),
            //Male
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Radio(
                    value: 'male',
                    groupValue: gender,
                    onChanged: (String? val) {
                      setState(() {
                        if (val != null) {
                          gender = val;
                        }
                      });
                    }),
                const Text('Male')
              ],
            ),

            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              //Female
              Radio(
                  value: 'female',
                  groupValue: gender,
                  onChanged: (String? val) {
                    setState(() {
                      if (val != null) {
                        gender = val;
                      }
                    });
                  }),
              const Text("Female")
            ]),

            RadioListTile(
                title: const Text('18+'),
                subtitle: const Text('Are you 18+'),
                value: 'female',
                groupValue: gender,
                onChanged: (String? val) {
                  setState(() {
                    if (val != null) {
                      gender = val;
                    }
                  });
                }),

            Checkbox(
                value: isChecked,
                activeColor: Colors.red,
                onChanged: (val) {
                  setState(() {
                    if (val != null) {
                      isChecked = val;
                    }
                  });
                }),

            DropdownButton(
              value: selected,
              icon: const Icon(Icons.arrow_downward),
              // iconSize: 50,
              style: const TextStyle(color: Colors.blue),
              underline: Container(
                  decoration: const BoxDecoration(
                border: Border(bottom: BorderSide(color: Colors.red, width: 2)),
              )),
              items: dropdownList
                  .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                  .toList(),
              onChanged: (String? val) {
                setState(() {
                  if (val != null) {
                    selected = val;
                  }
                });
              },
            ),
            //2ND DropDown
            DropdownButton(
              value: selectedNum,
              icon: const Icon(Icons.arrow_downward),
              // iconSize: 50,
              style: const TextStyle(color: Colors.blue),
              underline: Container(
                  decoration: const BoxDecoration(
                border: Border(bottom: BorderSide(color: Colors.red, width: 2)),
              )),
              items: dropdownListNum
                  .map((e) =>
                      DropdownMenuItem(value: e, child: Text(e.toString())))
                  .toList(),
              onChanged: (int? val) {
                setState(() {
                  if (val != null) {
                    selectedNum = val;
                  }
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
