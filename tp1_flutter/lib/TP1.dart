import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

///classe de media model
class MediaModel {
  String imageUrl;
  String title;
  String description;
  bool isFavorite = false;
  // Constructor
  MediaModel({this.imageUrl, this.title, this.description});
}

/// ---------------------initialisation des lists de media------------------------
final series = [
  MediaModel(
    imageUrl:
    'https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/nx21-tXMN3Y20PIL9.jpg',
    title: 'One Piece',
    description: "Gold Roger was known as the Pirate King, the strongest and most infamous being to have sailed the Grand Line. The capture and death of Roger by the World Government brought a change throughout the world. His last words before his death revealed the location of the greatest treasure in the world, One Piece. It was this revelation that brought about the Grand Age of Pirates, men who dreamed of finding One Piece (which promises an unlimited amount of riches and fame), and quite possibly the most coveted of titles for the person who found it, the title of the Pirate King",
  ),
  MediaModel(
    imageUrl:
    'https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/bx16498-m5ZMNtFioc7j.png',
    title: 'Shingeki no Kyojin',
    description: "Several hundred years ago, humans were nearly exterminated by titans. Titans are typically several stories tall, seem to have no intelligence, devour human beings and, worst of all, seem to do it for the pleasure rather than as a food source. A small percentage of humanity survived by walling themselves in a city protected by extremely high walls, even taller than the biggest of titans",
  ),
  MediaModel(
    imageUrl:
    'https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/nx21507-UaVmcRIUjhUa.jpg',
    title: 'Mob Psycho 100',
    description: "The story revolves around Mob, a boy who will explode if his emotional capacity reaches 100%. This boy with psychic powers earned his nickname Mob because he does not stand out among other people. He keeps his psychic powers bottled up so he can live normally, but if his emotional level reaches 100, something will overwhelm his entire body.",
  ),
  MediaModel(
      imageUrl: 'https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/nx164-QYmGmG2k09pL.jpg',
      title: 'Mononoke-hime',
      description: "A calm village residing in the mountains comes under attack from a demon-possessed boar one day. Ashitaka, a young man and prince of the tribe, engages the creature in an attempt to save his village. During the battle, the boar bites him on the arm, leaving it blackened and cursed. Following his village s traditions, Ashitaka is exiled and becomes a wanderer, looking for a solution to the curse before it engulfs him."
  ),
  MediaModel(
      imageUrl: 'https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/bx4087-TMc9A0GSKiJf.png',
      title: 'Michiko and Hatchin',
      description: "After escaping from prison, the criminal Michiko rescues an abused girl known as Hatchin. The two are about as opposite as they come, but their fates become intertwined through the connection of a man from both their pasts. On the run from the police and Hatchin's abusive foster parents, the unlikely duo set out to find this man and ultimately discover their freedom."
  ),
];

final bds = [
  MediaModel(
    imageUrl: 'https://s4.anilist.co/file/anilistcdn/media/manga/cover/large/bx108556-9LeJqFHRzkVF.png',
    title: 'SPY×FAMILY',
    description: "The master spy codenamed <Twilight> has spent his days on undercover missions, all for the dream of a better world. But one day, he receives a particularly difficult new order from command. For his mission, he must form a temporary family and start a new life?! A Spy/Action/Comedy about a one-of-a-kind family!",
  ),
  MediaModel(
    imageUrl: 'https://s4.anilist.co/file/anilistcdn/media/manga/cover/large/nx52986-xufIx5HhD8TW.jpg',
    title: 'Gray and wonder around her',
    description: "Even though Ran looks like an adult during her transformation, she doesn’t really know what perils the outside world holds. When she meets rich playboy Otaro Mikado, does she gain a friend or foe?",
  ),
  MediaModel(
      imageUrl: 'https://s4.anilist.co/file/anilistcdn/media/manga/cover/large/nx65573-PwRU3hisff0g.jpg',
      title: 'Orange',
      description: "Everyone has regrets in life. So who wouldn’t take the chance to change the past if given the opportunity? When sixteen-year-old Takamiya Naho receives a mysterious letter, claiming to be from her twenty-seven-year-old self, her life is suddenly thrown into flux. The letter tells her that a new transfer student by the name of Naruse Kakeru will be joining her class, and to keep her eye on him. But why? Naho must decide what to make of the letter and its cryptic warning, and what it means not only for her future, but for Kakeru’s as well."
  ),
  MediaModel(
      imageUrl: 'https://s4.anilist.co/file/anilistcdn/media/manga/cover/large/bx87423-gPNtu8QbGped.jpg',
      title: 'The Promised Neverland',
      description: "Emma, Norman and Ray are the brightest kids at the Grace Field House orphanage. And under the care of the woman they refer to as “Mom,” all the kids have enjoyed a comfortable life. Good food, clean clothes and the perfect environment to learn—what more could an orphan ask for? One day, though, Emma and Norman uncover the dark truth of the outside world they are forbidden from seeing."
  ),
  MediaModel(
      imageUrl: 'https://s4.anilist.co/file/anilistcdn/media/manga/cover/large/bx102988-OoVJxQCH6fbR.jpg',
      title: 'Tokyo Revengers',
      description: "Watching the news, Takemichi Hanagaki\n learns that his girlfriend from way back in middle school,\n Hinata Tachibana, has died. \nThe only girlfriend he ever had was just \n killed by a villainous group known as the Tokyo Manji Gang."
  ),
  MediaModel(
      imageUrl: 'https://s4.anilist.co/file/anilistcdn/media/manga/cover/large/bx86742-TgJ4ulvfId3y.png',
      title: 'Children of the Whale',
      description: "Chakuro is the archivist for the Mud Whale, diligently chronicling the lives and deaths of his people. As one of the short-lived thymia wielders, he knows his time is limited and is determined to leave a better record than his predecessors. But the steady pace of their isolated existence on the Mud Whale is abruptly shattered when a scouting party discovers a mysterious young girl who seems to know more about their home than they do…"
  ),
  MediaModel(
      imageUrl: 'https://s4.anilist.co/file/anilistcdn/media/manga/cover/large/nx107237-97GTv95HyWHv.jpg',
      title: 'Blue Period',
      description: "The studious Yatora leaves a dry life of study and good manners behind for a new passion: painting. But untethering yourself from all your past expectations is dangerous as well as thrilling…"
  ),
  MediaModel(
    imageUrl: 'https://s4.anilist.co/file/anilistcdn/media/manga/cover/large/bx119425-meONVY52FtVp.png',
    title: 'One Piece Novel Law',
    description: "Watching the news, Takemichi Hanagaki learns that his girlfriend from way back in middle school, Hinata Tachibana, has died. The only girlfriend he ever had was just killed by a villainous group known as the Tokyo Manji Gang.\n He lives in a crappy apartment with thin walls, and his six-years-younger boss treats him like an idiot. Plus, he s a complete and total virgin… At the height of his rock-bottom life, he suddenly time-leaps twelve years back to his middle school days!! To save Hinata, and change the life he spent running away, hopeless part-timer Takemichi must aim for the top of Kanto s most sinister delinquent gang!",
  ),
];

final List<MediaModel> favs = [];

///-------------------creation des class (et state si il y a) de widget---------------------

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
  List<Widget> _widgetOptions = <Widget>[
    homeGridView(series, bds),
    getListView(series),
    getListView(bds),
    Text(
      'Cette application vous est proposée par Vinciane Leclercq et Marie Baey',
      style: optionStyle ,
      textAlign: TextAlign.justify,
    ),
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
          title: const Text('MEDIATHEQUE', textAlign: TextAlign.center),
          actions: [
            IconButton(icon: Icon(Icons.favorite ), onPressed: _pushSaved, ),
          ],

          backgroundColor:Color.fromRGBO(186, 93, 98, 1) /*Color.fromRGBO(30, 47, 74, 0.7)*/
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor:Color.fromRGBO(186, 93, 98, 1),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.screen_lock_landscape),
            label: 'Animés',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Mangas',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.movie_outlined),
            label: 'A Propos',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        //unselectedItemColor: Color.fromRGBO(69,89, 146, 1),
        onTap: _onItemTapped,
      ),
    );
  }
  void _pushSaved() {
    Navigator.of(context).push(
      MaterialPageRoute<void>(
        // NEW lines from here...
        builder: (BuildContext context) {
          final tiles = favs.map(
                (MediaModel media) {
              return ListTile(
                leading: Image(
                  image: NetworkImage(media.imageUrl),
                ),
                title: Text(
                    media.title
                ),
                onTap: () {
                  //_aColor = getColorFavorite(list[index]);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailScreen(media: media),
                    ),
                  );
                },
              );
            },
          );
          final divided = ListTile.divideTiles(
            context: context,
            tiles: tiles,
          ).toList();

          return Scaffold(
            appBar: AppBar(
                title: Text('fav'),
                backgroundColor:Color.fromRGBO(186, 93, 98, 1)
            ),
            body: ListView(children: divided),
          );
        }, // ...to here.
      ),
    );
  }

}

/// statefulWidget pour afficher le details des médias
class DetailScreen extends StatefulWidget {
  // Declare a field that holds the Todo.
  final MediaModel media;

  // In the constructor, require a Todo.
  DetailScreen({Key key, @required this.media}) : super(key: key);

  @override
  DetailsState createState() => DetailsState();
}

///le state du stateful Widget au dessus
class DetailsState extends State<DetailScreen> {
  Color _aColor;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter layout demo',
      home: Scaffold(
        body:
        DefaultTextStyle(
          style: Theme.of(context).textTheme.bodyText2,
          child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints viewportConstraints) {
              return SingleChildScrollView(
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    minHeight: viewportConstraints.maxHeight,
                    maxWidth: viewportConstraints.maxWidth,
                  ),
                  child: IntrinsicHeight(
                    child: Column(
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width, // donne la largeur de l'écran
                          // A fixed-height child.
                          height: 250,
                          alignment: Alignment.center,
                          child: Wrap(
                            //mainAxisSize: MediaQuery.of(context).size.width,
                            direction: Axis.horizontal,
                            children: [
                              Image(image: NetworkImage(widget.media.imageUrl, scale: 4)),
                              Container(
                                child: IconButton(
                                  icon: Icon(Icons.favorite),
                                  color: _aColor = getColorFavorite(widget.media),
                                  onPressed: () {
                                    setState(() {
                                      widget.media.isFavorite = !widget.media.isFavorite;
                                      _aColor = getColorFavorite(widget.media);
                                      if(widget.media.isFavorite){
                                        favs.add(widget.media);
                                      }
                                      else{
                                        favs.remove(widget.media);
                                      }
                                    });
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: FittedBox(
                              fit: BoxFit.scaleDown,
                              child: Text(widget.media.title, style: TextStyle( fontWeight: FontWeight.bold, fontSize: 40), maxLines: 1,overflow: TextOverflow.ellipsis,)
                          ),
                        ),
                        Expanded(
                          // A flexible child that will grow to fit the viewport but
                          // still be at least as big as necessary to fit its contents.
                          child: Container(
                            padding: const EdgeInsets.all(20),
                            height: 120.0,
                            alignment: Alignment.center,
                            child: Text(widget.media.description),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

///--------------------Les fonctions Widget----------------------
///fonction qui retourne une listView de la list en entrée
Widget getListView( List<MediaModel> list) {
  var listView;
  if (list.isNotEmpty){
    listView = ListView.builder(
        itemExtent: 80,
        itemCount: list.length,
        itemBuilder: (context, index) {
          Color _aColor = getColorFavorite(list[index]);
          return ListTile(
            leading: Image(
              image: NetworkImage(list[index].imageUrl),
            ),
            title: Text(list[index].title),
            trailing:
            Icon(
              Icons.favorite,
              color: _aColor,
            ),
            onTap: () {
              _aColor = getColorFavorite(list[index]);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailScreen(media: list[index]),
                ),
              );
            },

          );
        }
    );
  }
  else{
    return listView = Text("Vous n'avez pas encore de favories");
  }
  return listView;
}

///fonction qui retourne une gridView contenant des informations sur les list en entrée
Widget homeGridView( List<MediaModel> listAnime,List<MediaModel> listManga ){
  var gridView = GridView.count(
    primary: false,
    padding: const EdgeInsets.all(20),
    crossAxisSpacing: 10,
    mainAxisSpacing: 50,
    crossAxisCount: 2,
    children: <Widget>[
      Material(
        borderRadius: BorderRadius.all(Radius.circular(40.0)),
        color: Color.fromRGBO(244, 184, 183, 1),
        child: InkResponse(
          highlightShape: BoxShape.rectangle,
          borderRadius: BorderRadius.all(Radius.circular(40.0)),
          highlightColor: Color.fromRGBO(179, 54, 135, 0.3),
          onTap: (){          // a laisser trigger le inkResponse au toucher
          } ,
          child: Align(
            alignment: Alignment.center,
            child: RichText(
              text: TextSpan(
                text: listAnime.length.toString(),
                style: TextStyle(fontSize: 70, ),
                children: <TextSpan>[
                  TextSpan(text: '\nanimes dans ma liste', style: TextStyle(fontSize: 15, color: Colors.black54)),
                ],
              ),
              textAlign: TextAlign.center,
            ),
          ),
          //color: Colors.teal[100],
        ),
      ),

      Material(
        borderRadius: BorderRadius.all(Radius.circular(40.0)),
        color: Color.fromRGBO(244, 184, 183, 1),
        child: InkResponse(
          highlightShape: BoxShape.rectangle,
          borderRadius: BorderRadius.all(Radius.circular(40.0)),
          highlightColor: Color.fromRGBO(179, 54, 135, 0.3),
          onTap: (){
          } ,
          child: Align(
            alignment: Alignment.center,
            child: RichText(
              text: TextSpan(
                text: listManga.length.toString(),
                style: TextStyle(fontSize: 70, ),
                children: <TextSpan>[
                  TextSpan(text: '\nmangas dans ma liste', style: TextStyle(fontSize: 15, color: Colors.black54)),
                ],
              ),
              textAlign: TextAlign.center,
            ),
          ),
          //color: Colors.teal[100],
        ),
      ),
      Material(
        borderRadius: BorderRadius.all(Radius.circular(40.0)),
        color: Color.fromRGBO(244, 184, 183, 1),
        child: InkResponse(
          highlightShape: BoxShape.rectangle,
          borderRadius: BorderRadius.all(Radius.circular(40.0)),
          highlightColor: Color.fromRGBO(179, 54, 135, 0.3),
          onTap: (){
          } ,
          child: Align(
            alignment: Alignment.center,
            child: RichText(
              text: TextSpan(
                text: getNumLikedMedia(series).toString(),
                style: TextStyle(fontSize: 70, ),
                children: <TextSpan>[
                  TextSpan(text: '\nanimés favoris', style: TextStyle(fontSize: 15, color: Colors.black54)),
                ],
              ),
              textAlign: TextAlign.center,
            ),
          ),
          //color: Colors.teal[100],
        ),
      ),
      Material(
        borderRadius: BorderRadius.all(Radius.circular(40.0)),
        color: Color.fromRGBO(244, 184, 183, 1),
        child: InkResponse(
          highlightShape: BoxShape.rectangle,
          borderRadius: BorderRadius.all(Radius.circular(40.0)),
          highlightColor: Color.fromRGBO(179, 54, 135, 0.3),
          onTap: (){
          } ,
          child: Align(
            alignment: Alignment.center,
            child: RichText(
              text: TextSpan(
                text: getNumLikedMedia(bds).toString(),
                style: TextStyle(fontSize: 70, ),
                children: <TextSpan>[
                  TextSpan(text: '\nmangas favoris', style: TextStyle(fontSize: 15, color: Colors.black54)),
                ],
              ),
              textAlign: TextAlign.center,
            ),
          ),
          //color: Colors.teal[100],
        ),
      ),
      Material(
        borderRadius: BorderRadius.all(Radius.circular(40.0)),
        color: Color.fromRGBO(244, 184, 183, 1),
        child: InkResponse(
          highlightShape: BoxShape.rectangle,
          borderRadius: BorderRadius.all(Radius.circular(40.0)),
          highlightColor: Color.fromRGBO(179, 54, 135, 0.3),
          onTap: (){
          } ,
          child: Align(
            alignment: Alignment.center,
            child: RichText(
              text: TextSpan(
                text: 'Tips',
                style: TextStyle(fontSize: 35, ),
                children: <TextSpan>[
                  TextSpan(text: '\nVous pouvez liker les medias dans la fenetre details', style: TextStyle(fontSize: 15, color: Colors.black54)),
                ],
              ),
              textAlign: TextAlign.center,
            ),
          ),
          //color: Colors.teal[100],
        ),
      ),
      Material(
        borderRadius: BorderRadius.all(Radius.circular(40.0)),
        color: Color.fromRGBO(244, 184, 183, 1),
        child: InkResponse(
          highlightShape: BoxShape.rectangle,
          borderRadius: BorderRadius.all(Radius.circular(40.0)),
          highlightColor: Color.fromRGBO(179, 54, 135, 0.3),
          onTap: (){
          } ,
          child: Align(
            alignment: Alignment.center,
            child: RichText(
              text: TextSpan(
                text: 'Tips',
                style: TextStyle(fontSize: 35, ),
                children: <TextSpan>[
                  TextSpan(text: '\n En cliquant sur le coeur vous pourrez consulter vos favoris', style: TextStyle(fontSize: 15, color: Colors.black54)),
                ],
              ),
              textAlign: TextAlign.center,
            ),
          ),
          //color: Colors.teal[100],
        ),
      ),
    ],
  );
  return gridView;
}

///----------------fonction de calcul------------------
/// recupère une couleur en fonction de l'état d'un média en entré
Color getColorFavorite (MediaModel media){
  if (media.isFavorite){
    return Colors.redAccent;
  }
  else return Colors.black12;
}

///recupère le nombre de éléments aimés dans une list
int getNumLikedMedia(List<MediaModel> list){
  int nbLiked = 0;
  list.forEach((element) {
    if(element.isFavorite){
      nbLiked++;
    }
  });
  return nbLiked;
}
