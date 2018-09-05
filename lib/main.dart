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
      body: Body(),
    );
  }
}


class Body extends StatelessWidget {

  final List<int> materialIndices = [900, 800, 700, 600, 500, 400, 300, 200, 100, 50]

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: materialIndices.length,
      itemBuilder: (context, index) {
        final int colorIndex = materialIndices[index]
        return Container(
          color: Colors.red[colorIndex],
          child: ListTile(
            title: Text('red[$colorIndex]'),
          ),
        );
      });
  }
}