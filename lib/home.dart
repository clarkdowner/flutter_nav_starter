import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomeState createState() => new _HomeState();
}

class _HomeState extends State<Home> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Starter Nav'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0, // this will be set when a new tab is selected 
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.home), 
            title: new Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.ac_unit),
            title: new Text('Placeholder'),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.satellite),
            title: new Text('Placeholder'),
          ),
        ],
      ),
    );
  }
}
