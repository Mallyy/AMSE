import 'package:flutter/material.dart';
class Exo5 extends StatefulWidget {
  // Declare a field that holds the Todo.

  // In the constructor, require a Todo.
  Exo5({Key key}) : super(key: key);

  @override
  _Exo5 createState() => _Exo5();
}

///le state du stateful Widget au dessus
class _Exo5 extends State<Exo5> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text('Exo5'),
        ),
        body: const Image(
          image: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
        )
    );
    throw UnimplementedError();
  }


}