import 'package:flutter/material.dart';
import 'package:proyectoapp/perfil.dart';
import 'package:proyectoapp/registro.dart';
import 'package:proyectoapp/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GameZid',
      theme: ThemeData(
        //brightness: Brightness.dark, //tema oscuro para la app
        primarySwatch: Colors.orange,
      ),
      home: const MyHomePage(title: 'GameZoid'),
    );
  }
}
