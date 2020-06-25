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
    // TODO: implement build
    return new Scaffold(
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
      body: new Container(

        margin: EdgeInsets.only(top: 5, bottom: 5, left: 5, right: 5),
        decoration: new BoxDecoration(
            color: Colors.white,
            borderRadius: new BorderRadius.only(
              topLeft: const Radius.circular(10.0),
              topRight: const Radius.circular(10.0),
              bottomLeft: const Radius.circular(10.0),
              bottomRight: const Radius.circular(10.0),
            )
        ),
        child: new Center(
          child: new Card(
            elevation: 5.0,
           // color: Colors.white,
            child: new Container(
              width: MediaQuery.of(context).size.width /1.08,
              height: MediaQuery.of(context).size.height /5,
              child: Image.network(
                'https://picsum.photos/250?image=9',
              )
            ),

          )
        ),

      ),

      backgroundColor: Color.fromRGBO(255, 199, 0, 1),

    );
  }
}
