import 'package:flutter/material.dart';
class Exo4 extends StatefulWidget {
  // Declare a field that holds the Todo.

  // In the constructor, require a Todo.
  Exo4({Key key}) : super(key: key);

  @override
  _Exo4 createState() => _Exo4();
}

///le state du stateful Widget au dessus
class _Exo4 extends State<Exo4> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Exo4'),
      ),
      body: Column (
        children: [
          Container(
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(color: Colors.white),
              margin: EdgeInsets.all(20.0),
              child: const Image(
                image: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
              )
          ),
        ],
      ),
    );
    throw UnimplementedError();
  }


}
class Tile {
  String imageURL;
  Alignment alignment;

  Tile({this.imageURL, this.alignment});

  Widget croppedImageTile() {
    return FittedBox(
      fit: BoxFit.fill,
      child: ClipRect(
        child: Container(
          child: Align(
            alignment: this.alignment,
            widthFactor: 0.3,
            heightFactor: 0.3,
            child: Image.network(this.imageURL),
          ),
        ),
      ),
    );
  }
}

Tile tile = new Tile(
    imageURL: 'https://picsum.photos/512', alignment: Alignment(0, 0));

class DisplayTileWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Display a Tile as a Cropped Image'),
        centerTitle: true,
      ),
      body: Center(
          child: Column(children: [
            SizedBox(
                width: 150.0,
                height: 150.0,
                child: Container(
                    margin: EdgeInsets.all(20.0),
                    child: this.createTileWidgetFrom(tile))),
            Container(
                height: 200,
                child: Image.network('https://picsum.photos/512',
                    fit: BoxFit.cover))
          ])),
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