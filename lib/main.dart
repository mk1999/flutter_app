// ignore: avoid_web_libraries_in_flutter
import 'package:flutter/material.dart';
import 'package:flutterapp/Books.dart';

import 'Movies.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '2020 App',
      theme: ThemeData(
        primaryColor: Color(0xFF1F2833),
      ),
      home: MyHomePage(title: '2020 App'),
      /*routes: <String,WidgetBuilder>{
        "/a":(BuildContext) => new bookPage("Books"),
      }*/
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
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
    title: Text('2020 App'),
        backgroundColor: Color(0xFF1F2833),

    ),
    body: Center(

      child: Container(

      decoration: new BoxDecoration(
        gradient: LinearGradient(
            //linear-gradient(180deg, #8A518F 0%, #BA8289 45.83%, #CAA0A0 100%);
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter, // 10% of the width, so there are ten blinds.
            colors: [const Color(0xFF45A29E), const Color(0xFFC5C6C7)], // whitish to gray
            //tileMode: TileMode.repeated
        )
      ),
    ),
    ),
    );
  }
}

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          new UserAccountsDrawerHeader(
            accountName: new Text("Keerthana M"),
            accountEmail: new Text("keerthanamahendiren@gmail.com"),
            currentAccountPicture: new CircleAvatar(
                backgroundColor: Color(0xFFBA8289),
              child: new Text("K",
                style: TextStyle(fontSize: 30,color: Colors.black),
              ),
            ),
            decoration: new BoxDecoration(
                color: Color(0xFF1F2833),
                /*image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/images/2020App.png'))*/
                ),
          ),

          ListTile(
            leading: Icon(Icons.input),
            title: Text('Welcome'),
            onTap: () => {},
          ),
          ListTile(
            leading: Icon(Icons.assignment),
            title: Text('Books'),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context) =>
                      new bookPage("Books")
              ));
            },
          ),
          ListTile(
            leading: Icon(Icons.camera_roll),
            title: Text('Movies'),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context) =>
                  new moviePage("Movies")
              ));
            },
          ),

          ListTile(
            leading: Icon(Icons.card_membership),
            title: Text('Feed'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Logout'),
            onTap: () => {Navigator.of(context).pop()},
          ),
        ],
      ),
    );
  }
}