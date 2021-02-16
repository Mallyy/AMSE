import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'EXO4.dart';

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
  //Alignment tileAlignment= Alignment(-1, -1);
  Tile tile = new Tile(imageURL: 'https://picsum.photos/512', alignment: Alignment((-1), -1));
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
                crossAxisSpacing: 1,
                mainAxisSpacing: 1,
                crossAxisCount: _sideSquare.toInt(),
                children: List.generate(nbTile, (index) {
                  return Container(
                          child: this.createTileWidgetFrom(tile));
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
          ],
        )
    );
  }

  Widget createTileWidgetFrom(Tile tile) {
    return InkWell(
      child: tile.croppedImageTile(),
      onTap: () {
        print("tapped on tile");
      },
    );
  }
}