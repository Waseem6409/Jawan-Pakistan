import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("Assignment-1"),
            ),
            body: Column(children: <Widget>[
              Center(
                  child: Container(
                      padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                      child: Text(
                          'My name is Waseem,I am a full stack developer and live in Karachi',
                          style: TextStyle(fontSize: 22)))),
            ])));
  }
}
