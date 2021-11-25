import 'package:flutter/material.dart';
import 'package:proyectoapp/estados.dart';
import 'package:proyectoapp/main.dart';
import 'package:proyectoapp/publicaciones.dart';

class ContentPage11 extends StatefulWidget {
  const ContentPage11({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<ContentPage11> createState() => _ContentPageState();
}

class _ContentPageState extends State<ContentPage11> {
  int _selectedIndex = 0;

  static const TextStyle optionStyle =
      TextStyle(fontSize: 15, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Actividad',
      style: optionStyle,
    ),
    Text(
      'Index 1: Home',
      style: optionStyle,
    ),
    Text(
      'Index 2: Ubicacion',
      style: optionStyle,
    ),
    Text(
      'Index 3: Chat',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

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
                            _widgetOptions.elementAt(_selectedIndex),
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
                            _widgetOptions.elementAt(_selectedIndex),
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
                            _widgetOptions.elementAt(_selectedIndex),
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
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const MyApp()));
                },
                child: const Text('Cerrar Sesión')),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.wb_shade),
            label: 'Actividad',
            backgroundColor: Colors.purple,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.purple,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.edit_location_rounded),
            label: 'Ubicación',
            backgroundColor: Colors.purple,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble),
            label: 'Chat',
            backgroundColor: Colors.purple,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.deepPurple[50],
        onTap: _onItemTapped,
      ),
    );
  }
}
