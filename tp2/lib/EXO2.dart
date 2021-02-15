import 'package:flutter/material.dart';
class Exo2 extends StatefulWidget {
  // Declare a field that holds the Todo.

  // In the constructor, require a Todo.
  Exo2({Key key}) : super(key: key);

  @override
  _Exo2 createState() => _Exo2();
}

///le state du stateful Widget au dessus
class _Exo2 extends State<Exo2> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Exo2'),
      ),
    );
    throw UnimplementedError();
  }


}