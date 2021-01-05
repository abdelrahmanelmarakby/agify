import 'package:api/Network/NetworkData.dart';
import 'package:flutter/material.dart';

class homeSceen extends StatefulWidget {
  @override
  _homeSceenState createState() => _homeSceenState();
}

class _homeSceenState extends State<homeSceen> {
  @override
  Widget build(BuildContext context) {
    TextEditingController name = new TextEditingController();
    var age;
    return Scaffold(
        body: ListView(
      children: [
        Row(
          children: [
            TextFormField(),
            FlatButton(
                onPressed: () {
                  setState(() {
                    age = getAge(name.text);
                  });
                },
                child: Text("Get your predicted age"))
          ],
        ),
        Text("your predicted age is $age")
      ],
    ));
  }
}
