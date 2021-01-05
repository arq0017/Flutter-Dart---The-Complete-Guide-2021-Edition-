import 'package:flutter/material.dart';
import 'package:flutter_assignment/myText.dart';

class TextControl extends StatefulWidget {
  @override
  _TextControlState createState() => _TextControlState();
}

class _TextControlState extends State<TextControl> {
  String headline = 'Flutter';
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      MyText(headline),
      ElevatedButton(
        child: Text('Change Text', style: TextStyle(color: Colors.black)),
        onPressed: () {
          setState(() {
            headline = 'Dart';
          });
        },
      ),
    ]);
  }
}
