import 'package:flutter/material.dart';
//import 'home.dart';

void main() => runApp(new App());

class App extends StatelessWidget {
  // This widget is the root of the application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(primarySwatch: Colors.blue,),
      home: new Home(title: 'Flutter Starter Project'),
    );
  }
}


class Home extends StatelessWidget {
  Home({Key key, this.title}) : super(key: key);

  final title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            color: Colors.red,
            child: ListTile(
              title: Text('red'),
            ),
          ),
          Container(
            color: Colors.green,
            child: ListTile(
              title: Text('red'),
            ),
          ),
        ],
      ),
    );
  }
}