import 'package:flutter/material.dart';
//import 'home.dart';

void main() => runApp(new App());


class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}


class _AppState extends State<App> {
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
      bottomNavigationBar: BottomNavigation(),
    );
  }
}


class Body extends StatelessWidget {

  final List<int> materialIndices = [900, 800, 700, 600, 500, 400, 300, 200, 100, 50];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: materialIndices.length,
      itemBuilder: (context, index) {
        final int colorIndex = materialIndices[index];
        return Container(
          color: Colors.red[colorIndex],
          child: ListTile(
            title: Text('red[$colorIndex]'),
            trailing: Icon(Icons.chevron_right),
            onTap: () => null,
          ),
        );
      });
  }
}


enum TabItem { red, green, blue }

class TabHelper {
  static TabItem item({int index}) {
    switch(index) {
      case 0:
        return TabItem.red;
      case 1:
        return TabItem.green;
      case 2:
        return TabItem.blue;
    }
    return TabItem.red;
  }

  static String description(TabItem tabItem) {
    switch(tabItem) {
      case TabItem.red:
        return 'Red';
      case TabItem.green:
        return 'Green';
      case TabItem.blue:
        return 'Blue';
    }
    return '';
  }

  static MaterialColor color(TabItem tabItem) {
    switch(tabItem) {
      case TabItem.red:
        return Colors.red;
      case TabItem.green:
        return Colors.green;
      case TabItem.blue:
        return Colors.blue;
    }
    return Colors.grey;
  }
}



class BottomNavigation extends StatefulWidget {
  @override
  _BottomNavigationState createState() => new _BottomNavigationState();
}


class _BottomNavigationState extends State<BottomNavigation> {

  int _currentIndex = 0;

  void onTabTap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _currentIndex,
      items: [
        _buildBottomNavigationBarItem(tabItem: TabItem.red),
        _buildBottomNavigationBarItem(tabItem: TabItem.green),
        _buildBottomNavigationBarItem(tabItem: TabItem.blue),
      ],
      onTap: onTabTap,
    );
  }

  BottomNavigationBarItem _buildBottomNavigationBarItem({TabItem tabItem}) {
    return BottomNavigationBarItem(
      title: new Text(TabHelper.description(tabItem)),
      icon: new Icon(
        Icons.layers,
//        color: TabHelper.color(tabItem),
      ),
    );
  }
}
