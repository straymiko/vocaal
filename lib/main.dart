import 'package:flutter/material.dart';
import 'package:vocaal/bluetooth.dart';
import 'package:vocaal/login.dart';
import 'package:vocaal/profilemain.dart';
import 'package:vocaal/nav-drawer.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => Login(),
        '/profile': (context) => Profile(),
        '/MyHomePage': (context) => MyHomePage(),
        '/Bluetooth': (context) => Bluetooth()
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        title: Text('Main Page'),
      ),
      body: Form(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 72),
                child: Center(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Profile()),
                      );
                    },
                      style: ElevatedButton.styleFrom(
                        fixedSize: const Size(240, 80),
                        textStyle: const TextStyle(fontSize: 40),
                        backgroundColor: Colors.purple,
                      ),
                    child: Text("Profile")
                  )
                )
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 72),
                child: Center(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Bluetooth()),
                      );
                    },
                    child: Text("Bluetooth")
                  )
                )
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 72),
                child: Center(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Profile()), //placeholder name for Speech Commands
                      );
                    },
                    child: Text("Speech Commands")
                  )
                )
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 72),
                child: Center(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Profile()), //placeholder name for Dialog History
                      );
                    },
                    child: Text("Dialog History")
                  )
                )
              )
            ],
          )
        )
      )
    );
  }
}

