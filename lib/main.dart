import 'package:flutter/material.dart';

void main(){
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: "Les widgets basiques",
      theme: new ThemeData(
        primarySwatch: Colors.red
      ),
      debugShowCheckedModeBanner: false
    );
  }
}

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _Home;
  }
}

class _Home extends State {

}