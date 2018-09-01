import 'package:flutter/material.dart';
import 'home.dart';

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
