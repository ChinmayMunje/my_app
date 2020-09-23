import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text('Jonathan Traut'),
            accountEmail: Text('Jonathantraut@gmail.com'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage("https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80"),
            ),
          ),
          ListTile(
            leading: Icon(Icons.folder),
            title: Text('My Files'),
          ),
          ListTile(
            leading: Icon(Icons.people),
            title: Text('Shared with me'),
          ),
          ListTile(
            leading: Icon(Icons.star),
            title: Text('Starred'),
          ),
          ListTile(
            leading: Icon(Icons.watch_later),
            title: Text('Recent'),
          ),
          ListTile(
            leading: Icon(Icons.file_upload),
            title: Text('Upload'),
          ),
          ListTile(
            leading: Icon(Icons.offline_pin),
            title: Text('Offline'),
          ),
        ],
      ),
    );
  }
}
