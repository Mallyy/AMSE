//import 'dart:html';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'TP1.dart';
//import 'package:flutter/src/painting/border_radius.dart';


void main() => runApp(MyApp());

/// This is the main application widget.
class MyApp extends StatelessWidget {
  static const String _title = 'mediatheque';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      //theme: new ThemeData(scaffoldBackgroundColor: Color.fromRGBO(24, 38, 64, 0)),
      home: MyStatefulWidget(),

    );
  }
}




  
