import 'package:flutter/material.dart';
//import 'placeholder_widget.dart';
//import 'drawer.dart';

class Home extends StatefulWidget {
  Home({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomeState createState() => new _HomeState();
}

class _HomeState extends State<Home> {

  int _currentIndex = 0;
  final List<Widget> _children = [
    HomeScreen(),
    CalendarScreen(),
    StatsScreen(),
    DiscussionScreen(),
    FlaggedScreen(),
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
            icon: new Icon(Icons.expand_more),
          ),
          IconButton(
            icon: new Icon(Icons.person),
          ),
        ],
      ),
      body: _children[_currentIndex],
      drawer: DrawerWidget(),
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.home), 
            title: new Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.calendar_today),
            title: new Text('Placeholder'),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.equalizer),
            title: new Text('Placeholder'),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.forum),
            title: new Text('Placeholder'),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.outlined_flag),
            title: new Text('Placeholder'),
          ),
        ],
      ),
    );
  }
}


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PlaceholderWidget(Colors.white);
  }
}


class CalendarScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PlaceholderWidget(Colors.amber);
  }
}


class StatsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PlaceholderWidget(Colors.green);
  }
}


class DiscussionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PlaceholderWidget(Colors.purple);
  }
}


class FlaggedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PlaceholderWidget(Colors.lightGreen);
  }
}


class PlaceholderWidget extends StatelessWidget {
  final Color color;

  PlaceholderWidget(this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
    );
  }
}


class DrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Drawer(
      child: ListView(
        padding: EdgeInsets.zero, // Remove any padding from the ListView
        children: <Widget>[
          DrawerHeader(
            child: Text('Temp Header'),
            // TODO: inherit from context widget
            decoration: BoxDecoration(
              color: Colors.amberAccent,
            ),
          ),
          ListTile(
            title: Text('First Title'),
            onTap: () {
              // TODO: probably should have a universal drawer navigation function
              // function should update state of app and then close the drawer
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Second Title'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
