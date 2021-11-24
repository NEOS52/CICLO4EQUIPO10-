import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Perfil"),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.menu),
            tooltip: 'Me gusta',
            onPressed: () {},
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
                    backgroundImage: NetworkImage(''),
                    radius: 20,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(''),
                    radius: 20,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(''),
                    radius: 20,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(''),
                    radius: 20,
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
