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
  var nbTile= 4;
  double _sideSquare= 2;
  var tempTile1 =0;
  var tempTile2;
  var compteur = 0;
  bool _inGame = false;
  //Alignment tileAlignment= Alignment(-1, -1);
  //Tile tile = new Tile(imageURL: 'https://picsum.photos/512', alignment: Alignment((-1), -1));
  List<Widget> widgetList = List<Widget>.generate(4, (index) {
    return Container(
      child: new InkResponse(
        child: Text(index.toString()),
      ),
    );
  });
  //List<Tile> tiles;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
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
                    widgetList.insert(tempTile1, widgetList.removeAt(tempTile2));
                    tempTile1 = index;
                    /*widgetList.removeAt(tempTile2);
                    widgetList.insert(tempTile1-1, Container(
                        color: Colors.red,
                        child: new InkResponse(
                          child: Text("VIDE", textAlign: TextAlign.center,),
                        ),
                      ),
                    );*/
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
          height: 100.0,
          child: 
          _inGame? Text("inGame",)
              : Slider(
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
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() {
          _inGame=!_inGame;
          if (_inGame == true){
            widgetList = List<Widget>.generate(nbTile, (index) {
              return Container(
                child: new InkResponse(
                    child:index==tempTile1? Text("test $index",
                      style: TextStyle(color: Colors.black),
                    )
                        :Text("test $index",
                      style: TextStyle(color: Colors.black),
                    )
                ),
              );
            });
          }
        }),
        tooltip: 'play!',
        child: Icon(Icons.play_arrow),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

    );
  }

  testVictory(){
    for ( int i = 0; i<= widgetList.length; i++){
     // widgetL
    }
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