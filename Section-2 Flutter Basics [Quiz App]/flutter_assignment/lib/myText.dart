import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  final String headline;
  MyText(this.headline);
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.all(20),
        child: Text(
          headline,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 24),
        ));
  }
}
