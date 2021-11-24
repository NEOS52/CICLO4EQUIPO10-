import 'package:flutter/material.dart';
import 'package:proyectoapp/estados.dart';
import 'package:proyectoapp/publicaciones.dart';

class ContentPage11 extends StatefulWidget {
  const ContentPage11({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<ContentPage11> createState() => _ContentPageState();
}

class _ContentPageState extends State<ContentPage11> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Perfil"),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.favorite),
            tooltip: 'Me gusta',
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ContentPage(
                            title: '',
                          )));
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            const Text("Perfil"),
            Row(
              children: const [
                Padding(
                  padding: EdgeInsets.all(10),
                  child: CircleAvatar(
                    backgroundImage:
                        NetworkImage('https://via.placeholder.com/150/92c952'),
                    radius: 30,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: CircleAvatar(
                    backgroundImage:
                        NetworkImage('https://via.placeholder.com/150/92c952'),
                    radius: 30,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: CircleAvatar(
                    backgroundImage:
                        NetworkImage('https://via.placeholder.com/150/92c952'),
                    radius: 30,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: CircleAvatar(
                    backgroundImage:
                        NetworkImage('https://via.placeholder.com/150/92c952'),
                    radius: 30,
                  ),
                ),
              ],
            ),
            Expanded(
                flex: 1,
                child: Column(
                  children: [
                    Container(
                        margin: const EdgeInsets.all(20.0), // exterior
                        padding: const EdgeInsets.all(10.0), // interior
                        color: Colors.deepOrange[50],
                        alignment: Alignment.center,
                        child: Column(
                          children: [
                            const Text("Actividad 1",
                                style: TextStyle(fontSize: 20.0)),
                            Row(children: const [
                              Padding(
                                padding: EdgeInsets.all(10),
                                child: CircleAvatar(
                                  backgroundImage: NetworkImage(
                                      'https://via.placeholder.com/150/92c952'),
                                  radius: 20,
                                ),
                              ),
                            ]),
                          ],
                        )),
                    Container(
                        margin: const EdgeInsets.all(20.0), // exterior
                        padding: const EdgeInsets.all(10.0), // interior
                        color: Colors.deepOrange[50],
                        alignment: Alignment.center,
                        child: Column(
                          children: [
                            const Text("Actividad 2",
                                style: TextStyle(fontSize: 20.0)),
                            Row(children: const [
                              Padding(
                                padding: EdgeInsets.all(10),
                                child: CircleAvatar(
                                  backgroundImage: NetworkImage(
                                      'https://via.placeholder.com/150/92c952'),
                                  radius: 20,
                                ),
                              ),
                            ]),
                          ],
                        )),
                    Container(
                        margin: const EdgeInsets.all(20.0), // exterior
                        padding: const EdgeInsets.all(10.0), // interior
                        color: Colors.deepOrange[50],
                        alignment: Alignment.center,
                        child: Column(
                          children: [
                            const Text("Actividad 3",
                                style: TextStyle(fontSize: 20.0)),
                            Row(children: const [
                              Padding(
                                padding: EdgeInsets.all(10),
                                child: CircleAvatar(
                                  backgroundImage: NetworkImage(
                                      'https://via.placeholder.com/150/92c952'),
                                  radius: 20,
                                ),
                              ),
                            ]),
                          ],
                        ))
                  ],
                )),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ContentPage1(
                                title: '',
                              )));
                },
                child: const Text('Escribir estado')),
          ],
        ),
      ),
    );
  }
}
