import 'package:flutter/cupertino.dart';
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
  var nbTile= 9;
  double _sideSquare= 3;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text('Exo5'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            new Expanded(
                child:GridView.count(
                primary: false,
                padding: const EdgeInsets.all(20),
                crossAxisSpacing: 2,
                mainAxisSpacing: 2,
                crossAxisCount: _sideSquare.toInt(),
                children: List.generate(nbTile, (index) {
                  return Container(
                      padding: const EdgeInsets.all(8),
                      color: Colors.black12,
                      child: Text('Tile $index',)
                  );
                })
            ),
            ),
            Slider(
              value: _sideSquare,
              min: 2,
              max: 10,
              divisions: 8,
              label: _sideSquare.round().toString(),
              onChanged: (double value) {
                setState(() {
                  _sideSquare = value;
                  nbTile = _sideSquare.toInt()*_sideSquare.toInt();
                });
              },
            )
            /*GridView.count(
                primary: false,
                padding: const EdgeInsets.all(20),
                crossAxisSpacing: 2,
                mainAxisSpacing: 2,
                crossAxisCount: 3,
                children: List.generate(nbTile, (index) {
                  return Container(
                      padding: const EdgeInsets.all(8),
                      color: Colors.black12,
                      child: Text('Tile $index',)
                  );
                })
            ),
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

            ),*/
          ],
        )
    );
    throw UnimplementedError();
  }


}