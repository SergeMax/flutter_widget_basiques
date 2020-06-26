import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: "Les widgets basiques",
      theme: new ThemeData(
          primarySwatch: Colors.red,
          primaryTextTheme: TextTheme(
              headline6: TextStyle(color: Colors.black)
          )
      ),
      debugShowCheckedModeBanner: false,
      home: new Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _Home();
  }
}

class _Home extends State {
  @override
  Widget build(BuildContext context) {

    var largeur = MediaQuery.of(context).size.width;
    // TODO: implement build
    return new Scaffold(
      backgroundColor: Color.fromRGBO(255, 199, 0, 1),
      appBar: new AppBar(
        title: new Text("Yellow'Doubt"),
        backgroundColor: Color(0xffFFD12C),
        centerTitle: true,
        leading: new Icon(
            Icons.account_box,
          color: Colors.white70,
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.blur_linear,
                size: 25,
                color: Colors.white70,
              ),
              onPressed: () {
                print("Hello");
              }),
        ],
      ),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            new Container(

              height: MediaQuery.of(context).size.width / 10,
              margin: EdgeInsets.only(top: 20),
              child: new Text(
              'Salut les codeurs',

              style : new TextStyle(
                color: Colors.grey[900],
                fontSize: 30.0,
                fontStyle: FontStyle.italic,
              ),
            ),
        ),
            new Card(
              elevation: 10,
              child :  new Container(
                  width: MediaQuery.of(context).size.width,
                  height: 200,
                child: new Image.asset(
                    'images/voielacte.jpg',
                     fit: BoxFit.cover,
                ),

              )

            ),
            new IconButton(
                icon: new Icon(Icons.add_box),
                onPressed: () {
                  print("Bouton pressé");
                }),
            new Container(
              height: MediaQuery.of(context).size.width / 8,
              color: Colors.white60,
              margin: EdgeInsets.only(left: 20, right: 20, bottom: 20),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  new Icon(
                    Icons.accessibility,
                  color: Colors.grey[300],
                  size: largeur /13,
                  ),
                  new Icon(
                    Icons.account_box,
                    color: Colors.grey[300],
                    size: largeur /13,
                  ),
                  new Icon(
                    Icons.account_circle,
                    color: Colors.grey[300],
                    size: largeur /13,
                  ),
                  new Icon(
                    Icons.accessible,
                    color: Colors.grey[300],
                    size: largeur /13,
                  ),
                ],
              ),
            )
          ],
        ),

      ),


    );
  }
}
