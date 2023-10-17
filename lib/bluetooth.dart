import 'package:flutter/material.dart';
    //show BuildContext, MaterialApp, StatelessWidget, Widget, runApp;
import 'package:vocaal/bluetoothpack/SelecionarDispositivo.dart';
import 'package:vocaal/bluetoothpack/HomePage.dart';
import 'package:provider/provider.dart';
import 'package:vocaal/bluetoothpack/provider/StatusConexaoProvider.dart';

void main() {
  runApp(Bluetooth());
}

class Bluetooth extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider<StatusConexaoProvider>.value(
              value: StatusConexaoProvider()),
        ],
        child: MaterialApp(
          title: 'Bluetooth',
          initialRoute: '/',
          routes: {
            '/': (context) => HomePage(),
            '/selectDevice': (context) => const SelecionarDispositivoPage(),
          },
        ));
  }
}