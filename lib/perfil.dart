import 'package:flutter/material.dart';
import 'package:proyectoapp/estados.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

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
                child: Container(
                  margin: const EdgeInsets.all(10.0), // exterior
                  padding: const EdgeInsets.all(10.0), // interior
                  color: Colors.deepOrange[50],
                  alignment: Alignment.center,
                  child:
                      const Text("Noticias", style: TextStyle(fontSize: 20.0)),
                )),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("Regresar")),
          ],
        ),
      ),
    );
  }
}
