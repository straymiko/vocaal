import 'package:flutter/material.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text(
              'Side menu',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
            decoration: BoxDecoration(
                color: Colors.green,
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/images/cover.jpg'))),
          ),
          ListTile(
            leading: Icon(Icons.input),
            title: Text('Home Page'),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/MyHomePage');
              Navigator.pushReplacementNamed(context, '/MyHomePage');
            },
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Profile'),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/profile');
              Navigator.pushReplacementNamed(context, '/profile');
            },
          ),
          ListTile(
            leading: Icon(Icons.history),
            title: Text('Dialog History'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.event_note),
            title: Text('Speech Commands'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/speechCommands1');
                Navigator.pushReplacementNamed(context, '/speechCommands1');
              }
          ),
          ListTile(
              leading: Icon(Icons.bluetooth),
              title: Text('Bluetooth'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/Bluetooth');
                Navigator.pushReplacementNamed(context, '/Bluetooth');
              }
          ),
          ListTile(
              leading: Icon(Icons.format_list_numbered),
              title: Text('Word Bank'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/WordBank');
                Navigator.pushReplacementNamed(context, '/WordBank');
              }
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Logout'),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/');
              Navigator.pushReplacementNamed(context, '/');
            }
          ),
        ],
      ),
    );
  }
}