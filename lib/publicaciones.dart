import 'package:flutter/material.dart';
import 'package:proyectoapp/perfil.dart';

class ContentPage1 extends StatefulWidget {
  const ContentPage1({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<ContentPage1> createState() => _ContentPageState();
}

class _ContentPageState extends State<ContentPage1> {
  var listado = [
    Post(1, 'League of Legends', '________________________________________'),
    Post(2, 'League of Legends', '________________________________________'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.builder(
          itemCount: listado.length,
          itemBuilder: (context, i) {
            return Card(
                child: Container(
              padding: const EdgeInsets.all(50.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ContentPage11(
                                      title: '',
                                    )));
                      },
                      child: const Text('Publicar')),
                  Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(10),
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://via.placeholder.com/150/92c952'),
                          radius: 20,
                        ),
                      ),
                      Text(
                        listado[i].name,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 14.0),
                      ),
                    ],
                  ),
                  Text(
                    listado[i].message,
                    style: const TextStyle(fontSize: 11.0),
                  )
                ],
              ),
            ));
          }),
    );
  }
}

class Post {
  late int id;
  late String name;
  late String message;

  Post(this.id, this.name, this.message);
}
