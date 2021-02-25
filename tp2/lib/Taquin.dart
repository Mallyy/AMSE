import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
  var tempTile1;
  var tempTile2;
  var compteur = 0;
  bool _inGame = false;
  bool _listGameCree= false;

  List<Widget> widgetList;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    if(_inGame==true && _listGameCree == false){
      print("cree list on game");
      tempTile1=0;
      List<Tile> tiles = makeTile(_sideSquare);
      widgetList = List<Widget>.generate(nbTile, (index) {
        return Container(
          child: new InkResponse(
            //child: Text("$index", textAlign: TextAlign.center,),
            child: this.createTileWidgetFrom(tiles[index], index),
          ),
        );
      });
      _listGameCree = true;
    }
    else if (_inGame== false ) {
      List<Tile> tiles = makeTile(_sideSquare);
      widgetList = List<Widget>.generate(nbTile, (index) {
        return Container(
          child: new InkResponse(
            child: this.createTileWidgetFrom( tiles[index], index ),
          ),
        );
      });
      print("new List tile");
    }
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
              /*onTap: (){
                print("tapOnTile");
                if(((index - tempTile1 == _sideSquare || index - tempTile1 == -_sideSquare)) || (index-tempTile1==1 || (index-tempTile1==-1))){ // le deplacement de la tile 0 n'est possible que pour les case adjacentes
                  tempTile2 = index;
                  setState(() {
                    widgetList.insert(tempTile2, widgetList.removeAt(tempTile1));
                    print("tile swap");
                    tempTile1 = index;
                  });
                }
              },*/
            ),
          );
        },
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: _sideSquare.toInt(),
          mainAxisSpacing: 0.1,
          crossAxisSpacing: 0.1,
        ),
        padding: const EdgeInsets.all(3),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Container(
          height: 100.0,
          child: 
          _inGame? Text("inGame", )
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
                tempTile1=0;
              });
            },
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() {

          if(_inGame==true){
            _listGameCree = false;
          }
          _inGame=!_inGame;
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

  Widget createTileWidgetFrom(Tile tile, int index) {
    return InkWell(
      child: index == tempTile1? Container(
        padding: const EdgeInsets.all(3),
        color: Colors.red,
        child: tile.croppedImageTile(),
      )
          :Container(
        child: tile.croppedImageTile(),
      ),
      onTap: () {
        print("tapped on tile");
        if (_inGame && (((index - tempTile1 == _sideSquare ||
            index - tempTile1 == -_sideSquare)) || (index - tempTile1 == 1 ||
            (index - tempTile1 ==
                -1)))) { // le deplacement de la tile 0 n'est possible que pour les case adjacentes
          tempTile2 = index;
          print("$index");
          setState(() {
            widgetList.insert(tempTile2, widgetList.removeAt(tempTile1));
            print("tile swap");
            tempTile1 = index;
          });
        }
      }
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
  return list;
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