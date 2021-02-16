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
  double _rotateXSliderValue = 20;
  double _rotateZSliderValue = 20;
  double _scaleSliderValue = 20;
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
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(color: Colors.white),
              margin: EdgeInsets.all(20.0),
              child: Image(
                image: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
              )
          ),
          Container(
            child: Column(
              children: [
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
                Checkbox(
                    value: _isMirror,
                    onChanged:  (bool) {
                      setState(() {
                        _isMirror = !_isMirror;
                      });
                    },
                ),
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
