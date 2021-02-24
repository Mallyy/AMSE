import 'package:flutter/material.dart';
import 'EXO1.dart';
import 'EXO2.dart';
import 'EXO4.dart';
import 'EXO5.dart';
import 'EXO6.dart';
import 'EXO6b.dart';
import 'Taquin.dart';
final List<String> entries = <String>['1', '2', '3', '4', '5', '6a', '6b', 'Taquin'];


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: entries.length,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              child: InkWell(
              splashColor: Colors.blue.withAlpha(30),
              onTap: () {
              print('Card tapped.');
              },
                child:  ListTile(
                  title: Text('Exercice ${entries[index]}'),
                  trailing: Icon(Icons.arrow_right),
                  onTap: (){
                    openExo(index, context);
                  },
                ),
            ),
            );
          }
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

void openExo (int index, BuildContext context){
  switch(index){
    case 0 :
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Exo1(),
          )
      );
      break;
    case 1 :
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Exo2(),
          )
      );
      break;
    case 3 :
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DisplayTileWidget(),
          )
      );
      break;
    case 4:
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Exo5(),
          )
      );
      break;
    case 5:
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => PositionedTiles(),
          )
      );
      break;
    case 6:
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => PositionedTiles2(),
          )
      );
      break;
    case 7:
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Taquin(),
          )
      );
      break;
    default:
  }

}