import 'package:flutter/material.dart';

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