import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'EXO4.dart';

class Taquin extends StatefulWidget {
  // Declare a field that holds the Todo.

  // In the constructor, require a Todo.
  Taquin({Key key}) : super(key: key);

  @override
  _Taquin createState() => _Taquin();
}

///le state du stateful Widget au dessus
class _Taquin extends State<Taquin> {
  var nbTile= 9;
  double _sideSquare= 3;
  var tempTile1 =0;
  var tempTile2;
  var compteur = 0;

  //Alignment tileAlignment= Alignment(-1, -1);
  //Tile tile = new Tile(imageURL: 'https://picsum.photos/512', alignment: Alignment((-1), -1));
  List<Widget> widgetList = List<Widget>.generate(9, (index) {
  return Container(
  child: new InkResponse(
  child: Text(index.toString()),
  ),
  );
  });
  List<Tile> tiles;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    tiles = makeTile(_sideSquare);

    /*widgetList = List<Widget>.generate(nbTile, (index) {
      if (_sideSquare==3){
        return Container(
            child: new InkResponse(
              child: this.createTileWidgetFrom(tiles[index]),
              //onTap: ,
            ));
      }
      else return Container(
        color: Colors.black12,
        child: Text("tile $index"),
      );
    });
    */
    return Scaffold(
      appBar: AppBar(
        title: Text('Taquin'),
      ),
      body: GridView.builder(
        itemCount: widgetList.length,
        itemBuilder: (BuildContext context, int index){
          return new Card(
            child: new InkResponse(
              child: widgetList[index],
              //createTileWidgetFrom(tiles[index]),
              onTap: (){
                if(((index - tempTile1 == _sideSquare || index - tempTile1 == -_sideSquare)) || (index-tempTile1==1 || (index-tempTile1==-1))){ // le deplacement de la tile 0 n'est possible que pour les case adjacentes
                  tempTile2 = index;
                  setState(() {
                    widgetList.insert(
                        tempTile2, widgetList.removeAt(tempTile1));
                    tempTile1 = index;
                  });
                }
              },
            ),
          );
        },
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: _sideSquare.toInt(),
          mainAxisSpacing: 1,
          crossAxisSpacing: 1,
        ),
        padding: const EdgeInsets.all(10),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Container(
          height: 50.0,
          child: Slider(
            value: _sideSquare,
            min: 2,
            max: 10,
            divisions: 8,
            label: _sideSquare.round().toString(),
            onChanged: (double value) {
              setState(() {
                _sideSquare = value;
                nbTile = _sideSquare.toInt()*_sideSquare.toInt();
                widgetList = List<Widget>.generate(nbTile, (index) {
                  return Container(
                    child: new InkResponse(
                      child: Text(index.toString()),
                    ),
                  );
                });
                tempTile1=0;
              });
            },
          ),
        ),
      ),

    );
  }
  swapTiles() {
    setState(() {
      tiles.insert(2, tiles.removeAt(0));
    });
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
List<Tile> makeTile(double _squareSide){
  List<Tile> list = <Tile>[];

  for(double i=-1; i<=1; i++){
    for(double j=-1; j<=1;j++){
      list.add(new Tile(imageURL: 'https://picsum.photos/512', alignment: Alignment(j,i)));
    }
  }
  return list;
}