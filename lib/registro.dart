import 'package:flutter/material.dart';
import 'package:proyectoapp/main.dart';

class Registro extends StatelessWidget {
  const Registro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Registro',
      theme: ThemeData(
        //brightness: Brightness.dark, //tema oscuro para la app
        primarySwatch: Colors.orange,
      ),
      home: const MyHomePage(title: 'Registro'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _selected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.settings),
            tooltip: 'Configuración',
            onPressed: () {},
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.all(10.0),
              child: TextField(
                  decoration: const InputDecoration(
                    labelText: 'Nombres',
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (text) {
                    //print('$text');
                  }),
            ),
            Container(
              margin: const EdgeInsets.all(10.0),
              child: TextField(
                  decoration: const InputDecoration(
                    labelText: 'Apellidos',
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (text) {
                    //print('$text');
                  }),
            ),
            Container(
              margin: const EdgeInsets.all(10.0),
              child: TextField(
                  obscureText: true,
                  decoration: const InputDecoration(
                    labelText: 'Contraseña',
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (text) {
                    //print('$text');
                  }),
            ),
            Container(
              margin: const EdgeInsets.all(10.0),
              child: TextField(
                  decoration: const InputDecoration(
                    labelText: 'Fecha de nacimiento(dd/mm/aaaa)',
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (text) {
                    //print('$text');
                  }),
            ),
            Container(
              margin: const EdgeInsets.all(10.0),
              child: TextField(
                  decoration: const InputDecoration(
                    labelText: 'Correo',
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (text) {
                    //print('$text');
                  }),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(_selected ? "Aceptar terminos" : "No Aceptar"),
                Checkbox(
                    value: _selected,
                    onChanged: (value) {
                      setState(() {
                        _selected = value!;
                      });
                    })
              ],
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const MyApp()));
                },
                child: const Text('Ingresar')),
          ],
        ),
      ),
    );
  }
}
