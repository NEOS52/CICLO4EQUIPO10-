import 'package:flutter/material.dart';
import 'package:proyectoapp/main.dart';
import 'package:proyectoapp/perfil.dart';
import 'package:proyectoapp/registro.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _selected = false;
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  late String name, pw;
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
          child: Form(
            key: _formkey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Flexible(
                  child: Image.asset(
                    'assets/logo2.jpg',
                    width: 200,
                    height: 200,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10.0),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Usuario',
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please Enter User';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      name = value!;
                    },
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10.0),
                  child: TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                      labelText: 'Contraseña',
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please Enter Password';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      name = value!;
                    },
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(_selected ? "Recordar" : "No recordar"),
                    Checkbox(
                        value: _selected,
                        onChanged: (value) {
                          setState(() {
                            _selected = value!;
                          });
                        })
                  ],
                ),
                SizedBox(
                  width: 100,
                  height: 48,
                  child: RaisedButton(
                    color: Colors.orange,
                    onPressed: () {
                      if (_formkey.currentState!.validate()) {
                        print("successful");
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ContentPage11(
                                      title: '',
                                    )));
                        return;
                      } else {
                        print("UnSuccessfull");
                      }
                    },
                    shape: const RoundedRectangleBorder(
                        //borderRadius: BorderRadius.circular(50.0),
                        side: BorderSide(color: Colors.blue, width: 2)),
                    textColor: Colors.black,
                    child: const Text("Ingresar"),
                  ),
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const FormPage(
                                    title: '',
                                  )));
                    },
                    child: const Text('Registrar'))
              ],
            ),
          ),
        ));
  }
}
