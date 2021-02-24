import 'dart:ffi';
import 'dart:math';

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
  double _sideSquare = 3;
  //Alignment tileAlignment= Alignment(-1, -1);
  //Tile tile = new Tile(imageURL: 'https://picsum.photos/512', alignment: Alignment((-1), -1));

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    List<Tile> tiles = makeTile(_sideSquare);
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
                  //if (_sideSquare==3){
                    return Container(
                        child: this.createTileWidgetFrom( tiles[index], ));
                  //}
                  //else return Container(
                  //  color: Colors.black12,
                  //  child: Text("tile $index"),
                  //);
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

class Tile {
  String imageURL;
  Alignment alignment;
  double scale;

  Tile({this.imageURL, this.alignment, this.scale});

  Widget croppedImageTile() {
    return FittedBox(
      fit: BoxFit.fill,
      child: ClipRect(
        child: Container(
          child: Align(
            alignment: this.alignment,
            widthFactor: scale,
            heightFactor: scale,
            child: Image.network(this.imageURL),
          ),
        ),
      ),
    );
  }
}

List<Tile> makeTile(double _squareSide){
  List<Tile> list = <Tile>[];
  for(double i=0; i<=_squareSide-1; i++ ){
    double y = i/(_squareSide-1);
    print(y);
    for(double j=0; j<=_squareSide-1; j++ ){
      double x = j/(_squareSide-1) ;
      list.add(new Tile(imageURL: 'https://picsum.photos/512', alignment: FractionalOffset(x, y), scale: 1/_squareSide));
    }
  }
  /*list.add(new Tile(imageURL: 'https://picsum.photos/512', alignment: Alignment(-1,-1)));
  list.add(new Tile(imageURL: 'https://picsum.photos/512', alignment: Alignment(-1,-0.5)));
  list.add(new Tile(imageURL: 'https://picsum.photos/512', alignment: Alignment(-1,-1)));
  list.add(new Tile(imageURL: 'https://picsum.photos/512', alignment: Alignment(-1,-1)));

  list.add(new Tile(imageURL: 'https://picsum.photos/512', alignment: Alignment(-1,-1)));
  list.add(new Tile(imageURL: 'https://picsum.photos/512', alignment: Alignment(-1,-1)));
  list.add(new Tile(imageURL: 'https://picsum.photos/512', alignment: Alignment(-1,-1)));
  list.add(new Tile(imageURL: 'https://picsum.photos/512', alignment: Alignment(-1,-1)));*/


  return list;
}