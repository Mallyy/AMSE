import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';
class Exo2 extends StatefulWidget {
  // Declare a field that holds the Todo.

  // In the constructor, require a Todo.
  Exo2({Key key}) : super(key: key);

  @override
  _Exo2 createState() => _Exo2();
}

///le state du stateful Widget au dessus
class _Exo2 extends State<Exo2> {
  double _rotateXSliderValue = 0;
  double _rotateZSliderValue = 0;
  double _scaleSliderValue = 100;
  bool _isMirror = false;
  // TODO: implement build
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Exo2'),
      ),
      body: Column (
        children: [
          Container(
            height: 300,
            alignment: Alignment.center,
            child: Transform(
              transform: Matrix4(
                1, 0, 0, 0, // scale X
                0, 1, 0, 0, // scale Y
                0, 0, 1, 0,
                0, 0, 0, 1 / (_scaleSliderValue / 100), // scale X&Y
              )
                ..rotateX(pi / 180 * _rotateXSliderValue)
                ..rotateY(_isMirror ? pi : 0)
                ..rotateZ(pi / 180 * _rotateZSliderValue),
                alignment: Alignment.center,
              child: Container(
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(color: Colors.white),
                  child: Image(
                    image: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
                  )
              ),
            )
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("Déformation vertical"),
                Slider(
                  value: _rotateXSliderValue,
                  min: 0,
                  max: 100,
                  divisions: 10,
                  label: _rotateXSliderValue.round().toString(),
                  onChanged: (double value) {
                    setState(() {
                      _rotateXSliderValue = value;
                    });
                  },
                ),
                Text("Rotation"),
                Slider(
                  value: _rotateZSliderValue,
                  min: 0,
                  max: 100,
                  divisions: 10,
                  label: _rotateZSliderValue.round().toString(),
                  onChanged: (double value) {
                    setState(() {
                      _rotateZSliderValue = value;
                    });
                  },
                ),
                Text("Mirroir"),
                Checkbox(
                    value: _isMirror,
                    onChanged:  (bool) {
                      setState(() {
                        _isMirror = !_isMirror;
                      });
                    },
                ),
                Text("Taille"),
                Slider(
                  value: _scaleSliderValue,
                  min: 0,
                  max: 100,
                  divisions: 10,
                  label: _scaleSliderValue.round().toString(),
                  onChanged: (double value) {
                    setState(() {
                      _scaleSliderValue = value;
                    });
                  },
                )
              ],
            )
          ),
        ],
      ),
    );
    throw UnimplementedError();
  }
}
