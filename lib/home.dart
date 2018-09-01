import 'package:flutter/material.dart';
import 'placeholder_widget.dart';

class Home extends StatefulWidget {
  Home({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomeState createState() => new _HomeState();
}

class _HomeState extends State<Home> {

  int _currentIndex = 0;
  final List<Widget> _children = [
    PlaceholderWidget(Colors.white),
    PlaceholderWidget(Colors.red),
    PlaceholderWidget(Colors.green),
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Starter Nav'),
        actions: <Widget>[
          IconButton(
            icon: new Icon(Icons.radio),
          ),
          IconButton(
            icon: new Icon(Icons.edit),
          ),
        ],
      ),
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex,
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
