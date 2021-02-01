import 'package:flutter/material.dart';

class MediaModel {
  String imageUrl;
  String title;
  String description;

  // Constructor
  MediaModel({this.imageUrl, this.title, this.description});
}

final series = [
  MediaModel(
    imageUrl:
    'https://m.media-amazon.com/images/M/MV5BNzRlNGUzMmEtYTg0Ni00N2U2LTg4YWEtNDdlNmMwYjBlZDQ0XkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_FMjpg_UY864_.jpg',
    title: 'Lupin',
    description: "Série Netflix ...",
  ),
  MediaModel(
    imageUrl:
    'https://upload.wikimedia.org/wikipedia/fr/6/67/StrangerThingslogo.png',
    title: 'Stranger Things',
    description: "Série Netflix ...",
  ),
  MediaModel(
    imageUrl:
    'https://m.media-amazon.com/images/M/MV5BNGEyOGJiNWEtMTgwMi00ODU4LTlkMjItZWI4NjFmMzgxZGY2XkEyXkFqcGdeQXVyNjcyNjcyMzQ@._V1_FMjpg_UX675_.jpg',
    title: 'The Boys',
    description: "Série Amazon ...",
  ),
];

final bds = [
  MediaModel(
    imageUrl: 'images/bds/aldebaran.jpg',
    title: 'Aldébaran',
    description: "Les mondes d'Aldébaran ...",
  ),
  MediaModel(
    imageUrl: 'images/bds/le_tueur.jpg',
    title: 'Le tueur',
    description: "Bd cynique sur le monde...",
  ),
];

void main() => runApp(MyApp());

/// This is the main application widget.
class MyApp extends StatelessWidget {
  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

/// This is the stateful widget that the main application instantiates.
class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Media 1',
      style: optionStyle,
    ),
    Text(
      'Index 2: Media 2',
      style: optionStyle,
    ),
    Text(
      'A propos',
      style: optionStyle,
    )
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BottomNavigationBar Sample'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Media 1',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Media 2',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.movie_outlined),
            label: 'a propos',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
