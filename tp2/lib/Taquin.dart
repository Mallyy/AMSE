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
        print("tapped on tile : $index  $tempTile1"); // il dit des truc bizarre quand tu essaie de cliquer à gauche genre index = temptile1 ?
        if (_inGame && (((index - tempTile1 == _sideSquare ||
            index - tempTile1 == -_sideSquare)) || (index - tempTile1 == 1 ||
            (index - tempTile1 ==
                -1)))) { // le deplacement de la tile 0 n'est possible que pour les case adjacentes
          tempTile2 = index;
          print("$index");
          setState(() {
            if (index - tempTile1 == -1){ // pour l'échange avec la tuile de gauche
              print("ici");
              print("$tempTile1");
              print("$tempTile2");
              widgetList.insert(tempTile1, widgetList.removeAt(tempTile2)); // en théorie ça marche ça, d'ailleur ça marche une fois :)
              widgetList.insert(tempTile2, widgetList.removeAt(tempTile1-1)); // en théorie ça set à rien mais j'étais désespéré et ça case rien... en théorie :)            tempTile2 = index; //<--- si on le met pas le carré rouge bouge pas :(
            }
            else {
              widgetList.insert(tempTile2, widgetList.removeAt(tempTile1));
              if ((index - tempTile1 == _sideSquare || index - tempTile1 == -_sideSquare)){ // pour haut et bas (c'est pour éviter le décalage d'avant)
                widgetList.insert(tempTile1, widgetList.removeAt(tempTile2-1));
              }
              tempTile1 = index;
            }
            print("tile swap");

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