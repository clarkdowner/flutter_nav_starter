import 'package:flutter/material.dart';
//import 'home.dart';

void main() => runApp(new App());


class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(primarySwatch: Colors.blue,),
      home: new Home(),
    );
  }
}


class Home extends StatefulWidget {
//  Home({Key key, this.title}) : super(key: key);  // TODO: why keys here?
//  final title;

  @override
  _HomeState createState() => new _HomeState();
}

class _HomeState extends State<Home> {

  TabItem _currentTab = TabItem.values[0];

  void _onTabSelect(TabItem tabItem) {
    setState(() {
      _currentTab = tabItem;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Project Starter'),
      ),
      body: Body(currentTab: _currentTab,),
      bottomNavigationBar: BottomNavigation(
        currentTab: _currentTab,
        onTabSelect: _onTabSelect,
      ),
    );
  }
}


class Body extends StatelessWidget {
  Body({this.currentTab});
  final TabItem currentTab;

  final List<int> materialIndices = [900, 800, 700, 600, 500, 400, 300, 200, 100, 50];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: materialIndices.length,
      itemBuilder: (context, index) {

        final int colorIndex = materialIndices[index];
        final Color tabColor = TabHelper.color(currentTab)[colorIndex];
        final String tabTitle = TabHelper.description(currentTab);

        return Container(
          color: tabColor,
          child: ListTile(
            title: Text('$tabTitle[$colorIndex]'),
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



class BottomNavigation extends StatelessWidget {
  BottomNavigation({this.currentTab, this.onTabSelect});
  final TabItem currentTab;
  final ValueChanged<TabItem> onTabSelect; // TODO: why value changed?

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [  // TODO: map over TabItems to generate
        _buildBottomNavigationBarItem(tabItem: TabItem.red),
        _buildBottomNavigationBarItem(tabItem: TabItem.green),
        _buildBottomNavigationBarItem(tabItem: TabItem.blue),
      ],
      onTap: (index) => onTabSelect(TabHelper.item(index: index)),
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
