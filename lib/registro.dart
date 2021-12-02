import 'package:flutter/material.dart';
import 'package:proyectoapp/main.dart';

class FormPage extends StatefulWidget {
  const FormPage({Key? key, required this.title}) : super(key: key);

  final String title;
  @override
  _FormPageState createState() => _FormPageState();
}

//class MyHomePage extends StatefulWidget {
//const MyHomePage({Key? key, required this.title}) : super(key: key);

//final String title;

// @override
// State<MyHomePage> createState() => _MyHomePageState();
//}

class _FormPageState extends State<FormPage> {
  late String name, email, phone, fullname;
  bool _selected = false;
  TextEditingController password = TextEditingController();
  TextEditingController confirmpassword = TextEditingController();
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

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
            child: SingleChildScrollView(
          child: Form(
            key: _formkey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.all(10.0),
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: const InputDecoration(
                      labelText: 'Nombres',
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please Enter Name';
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
                    decoration: const InputDecoration(
                      labelText: 'Apellidos',
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please Enter Name';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      fullname = value!;
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
                        return 'Please a Enter Password';
                      }
                      if (!RegExp("^[a-zA-Z0-9+_.-]").hasMatch(value)) {
                        return 'Please a Enter Password valido';
                      } else if (value.length <= 8) {
                        return "La contraseña debe  debe tener 8 o mas caracteres";
                      }
                      return null;
                    },
                  ),
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
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Correo',
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please a Enter';
                      }
                      if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                          .hasMatch(value)) {
                        return 'Please a valid Email';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      email = value!;
                    },
                  ),
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
                                builder: (context) => const MyApp()));
                        return;
                      } else {
                        print("UnSuccessfull");
                      }
                    },
                    shape: const RoundedRectangleBorder(
                        //borderRadius: BorderRadius.circular(50.0),
                        side: BorderSide(color: Colors.blue, width: 2)),
                    textColor: Colors.black,
                    child: const Text("Registrar"),
                  ),
                )
              ],
            ),
          ),
        )));
  }
}
