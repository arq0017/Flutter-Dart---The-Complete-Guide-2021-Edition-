import 'package:flutter/material.dart';
import 'package:flutter_assignment/textControl.dart';

/* 
 (Optional) Here is main Dart file , i have used dark theme ( theme as property of MaterialApp)
 */

/*(must)
 1 . The body contains TextControl() object which is responsible for 
      changing text
 2 . Therefore we are making custom widget (making custom dart file for our widget )
    for doing internal changes in textControl.dart , 
    hence using stateful widget for reflecting
    internal changes (using setState method that can be used only in  stateful widget)
  3.  Button widget is being displayed from textControl   
 */

/*
 1. For output or displaying text , we are again using custom widget by 
    making custom myText dart file just for ease our work , else not compulsory here . 
  2. We are taking the text as input (variable headline)
     of myText(headline) constructor . Hence using text in headline and 
     displaying it . 
  3. For that we are returning the widget and using this class object in 
     textControl dart file as myText(headline) . 
 */
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.orange[700],
      ),
      home: Scaffold(
          appBar: AppBar(
            title: Text('Welcome'),
          ),
          body: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [TextControl()]))),
    );
  }
}
