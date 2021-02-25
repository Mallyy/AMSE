import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:collection/collection.dart';

class Taquin extends StatefulWidget {
  // Declare a field that holds the Todo.

  // In the constructor, require a Todo.
  Taquin({Key key}) : super(key: key);

  @override
  _Taquin createState() => _Taquin();
}

///le state du stateful Widget au dessus
class _Taquin extends State<Taquin> {
  // ----------- declaration des varibles ----------------------\\
  var nbTile= 4; // par defaut, la grille a 4 tuiles
  double _sideSquare= 2; // la taille en tiles du cote da la grille
  var tempTile1;
  var tempTile2;
  var compteur = 0; // compteur de coup
  bool _inGame = false; // true si la partie est en cours
  bool isWon = false; // indique si la partie est gagnée

  List<Widget> widgetList;// declaration de la liste des tiles jouable
  List<Widget> widgetListTest; // la liste qui sert a verifier que le jeu est gagné

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    if (_inGame== false ) { // tant que le jeu n'est pas lancé
    tempTile1=0;
      List<Tile> tiles = makeTile(_sideSquare);
      widgetList = List<Widget>.generate(nbTile, (index) {
        return Container(
          child: new InkResponse(
            child: this.createTileWidgetFrom(tiles[index], index),
          ),
        );
      });
      widgetListTest = new List<Widget>.from(widgetList); // duplique la list widgetList
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
              onTap: (){
                print("tapOnTile $index $tempTile1");
                if(((index - tempTile1 == _sideSquare || index - tempTile1 == -_sideSquare)) || (index-tempTile1==1 || (index-tempTile1==-1))){ // le deplacement de la tile 0 n'est possible que pour les case adjacentes
                  tempTile2 = index;
                  setState(() {
                    widgetList.insert(tempTile2, widgetList.removeAt(tempTile1));
                    if (index - tempTile1 == _sideSquare){// pour haut et bas (c'est pour éviter le décalage d'avant)
                      print("bas");
                      widgetList.insert(tempTile1, widgetList.removeAt(tempTile2-1));
                    }
                    else if (index - tempTile1 == -_sideSquare){
                      print("bas");
                      widgetList.insert(tempTile1, widgetList.removeAt(tempTile2+1));
                    }
                    print("tile swap");
                    tempTile1 = index;
                  });
                }
              },
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
          height: 250.0,
          child: 
          _inGame? Container(
            padding: const EdgeInsets.all(90),
            child: OutlineButton(
              onPressed: () {
                print(eq(widgetListTest,widgetList));
                return showDialog<void>(
                  context: context,
                  barrierDismissible: false, // user must tap button!
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text('Did you solve the puzzle?'),
                      content: eq(widgetListTest,widgetList)? SingleChildScrollView(
                        child: ListBody(
                          children: <Widget>[
                            Text('Yes, you did!'),
                            Text('Well done !'),
                          ],
                        ),
                      )
                      :SingleChildScrollView(
                            child: ListBody(
                              children: <Widget>[
                                Text('hmmm not really.....', textAlign: TextAlign.center),
                                Text('Don t give up!', textAlign: TextAlign.center),
                              ],
                            ),
                          ),
                          actions: <Widget>[
                        TextButton(
                          child: Text('Approve'),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                      ],
                    );
                  },
                );
              },
              child: Text('Solved?'),
            ),
          )
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
          _inGame=!_inGame;
        }),
        tooltip: 'play | retry',
        child: _inGame? Icon(Icons.replay) : Icon(Icons.play_arrow_sharp )
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

    );

  }

  Function eq = const ListEquality().equals;

  Widget createTileWidgetFrom(Tile tile, int index) {
    return InkWell(
      child: index == tempTile1? Container(
        color: Colors.black12,
      )
          :Container(
        child: tile.croppedImageTile(),
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