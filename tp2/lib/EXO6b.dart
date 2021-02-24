import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:tp2/EXO4.dart';

// ==============
// Models
// ==============

math.Random random = new math.Random();

class Tile {
  Color color;
  int id =0;

  Tile(this.color, this.id);
  Tile.randomColor(var index) {
    this.color = Color.fromARGB(
        255, random.nextInt(255), random.nextInt(255), random.nextInt(255));
    this.id = index;
  }
  Tile.id(var index){
    this.id=index;
  }
}

// ==============
// Widgets
// ==============

class TileWidget extends StatelessWidget {
  final Tile tile;
  var id;
  TileWidget(this.tile, this.id);

  @override
  Widget build(BuildContext context) {
    return this.coloredBox();
  }

  Widget coloredBox() {
    return Container(
        color: tile.color,
        child: Padding(
          padding: EdgeInsets.all(70.0),
        ));
  }
}

void main() => runApp(new MaterialApp(home: PositionedTiles2()));

class PositionedTiles2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => PositionedTiles2State();
}

class PositionedTiles2State extends State<PositionedTiles2> {
  List<Widget> tiles =
  List<Widget>.generate(9, (index) => TileWidget(Tile.randomColor(index), Tile.id(index)));
  var tempTile1;
  var tempTile2;
  var compteur=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Moving Tiles'),
        centerTitle: true,
      ),
      /*body: GridView.count(
        crossAxisCount: 3,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 1,
        mainAxisSpacing: 1,
        children: tiles,
      ),*/
      body: GridView.builder(
        itemCount: tiles.length,
        itemBuilder: (BuildContext context, int index)
        {
          return new Card(
          child: new InkResponse(
            child: tiles[index],

            onTap:() {
              if(compteur==0){
                tempTile1 = index;
                compteur = 1;
              }
              else if (compteur == 1){
                tempTile2 = index;
                setState(() {
                  tiles.insert(tempTile1, tiles.removeAt(tempTile2));
                });
                compteur = 0;
               // swapTiles();
              }
            },
          ),
      );
        },
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 1,
        crossAxisSpacing: 1,
      ),
        padding: const EdgeInsets.all(20),
      ),

      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.sentiment_very_satisfied), onPressed: swapTiles),
    );
  }

  swapTiles() {
    setState(() {
      tiles.insert(2, tiles.removeAt(0));
    });
  }
}