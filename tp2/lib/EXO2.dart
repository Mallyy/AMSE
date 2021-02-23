import 'dart:async';

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
  bool _isPlaying = false;
  bool _isMirror = false;
  bool _animationOn = false;
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Déformation"),
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
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
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
                  ]
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Miroir"),
                    Checkbox(
                      value: _isMirror,
                      onChanged:  (bool) {
                        setState(() {
                          _isMirror = !_isMirror;
                        });
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
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
                ),
                    Ink(
                        decoration: const ShapeDecoration(
                          color: Colors.lightBlue,
                          shape: CircleBorder(),
                        ),
                      child: FloatingActionButton(
                          child: _isPlaying
                        ? Icon(
                        Icons.pause_circle_outline,
                        size: 40.0,
                      )
                            : Icon(Icons.play_circle_outline, size: 40.0),
                          onPressed: (){
                            setState(() {
                              _isPlaying = !_isPlaying;
                              const d = const Duration(milliseconds: 50);
                              new Timer.periodic(d, animate);
                            });
                          }
                      ),
                    ),
              ],
            )
          ),
        ],
      ),
    );
    throw UnimplementedError();
  }
  void animate(Timer t){
    setState(() {
      if(_isPlaying == true){
        _rotateXSliderValue = (_rotateXSliderValue+1)%(100);
        _rotateZSliderValue = (_rotateZSliderValue+1)%(100);
        _scaleSliderValue = (_scaleSliderValue+1)%(100);
      }
      else{
        t.cancel();
      }
    });
  }
}

