import 'package:flutter/material.dart';
class Exo1 extends StatefulWidget {
  // Declare a field that holds the Todo.

  // In the constructor, require a Todo.
  Exo1({Key key}) : super(key: key);

  @override
  _Exo1 createState() => _Exo1();
}

///le state du stateful Widget au dessus
class _Exo1 extends State<Exo1> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
        title: Text('Exo1'),
    ),
      body: const Image(
        image: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
      )
    );
    throw UnimplementedError();
  }
  

}