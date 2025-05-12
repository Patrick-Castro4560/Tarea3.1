import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void _mensaje(String message) {
    final snackBar = SnackBar(
      content: Text(message),
      action: SnackBarAction(label: 'Deshacer', onPressed: () {}),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Color.fromRGBO(255, 11, 246, 19),
                ),
                child: Text(
                  "Menu",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              ListTile(
                title: const Text('Nuevo Grupo'),
                onTap: () {
                  _mensaje("Celeccionar Nuevo Grupo");
                },
              ),
              ListTile(
                title: const Text('Configuración'),
                onTap: () {
                  _mensaje("Configuracion seleccionada");
                },
              ),
            ],
          ),
        ),
        appBar: AppBar(
          title: const Text("WhatsApp"),
          backgroundColor: const Color.fromARGB(255, 11, 246, 19),
          bottom: const TabBar(
            indicatorColor: Colors.white,
            tabs: [
              Tab(icon: Icon(Icons.camera_alt)),
              Tab(text: 'Mensajes'),
              Tab(text: 'Estado'),
              Tab(text: 'Llamadas'),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Center(child: Text("Camara")),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView(
                children: <Widget>[
                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor: const Color.fromARGB(255, 203, 106, 26),
                    ),
                    title: Text('Ricard Calderon'),
                    subtitle: Text('Conectate al Blood Strike'),
                    trailing: Text('Hace unos segundos'),
                  ),
                  ListTile(
                    leading: CircleAvatar(backgroundColor: const Color.fromARGB(255, 163, 32, 193)),
                    title: Text('Cristian Zuaso'),
                    subtitle: Text("Ya hiciste la tarea?"),
                    trailing: Text('Hace 3 minutos'),
                  ),
                  ListTile(
                    leading: CircleAvatar(backgroundColor: const Color.fromARGB(255, 71, 23, 23)),
                    title: Text('Fernando'),
                    subtitle: Text("Ajustemos una pizza"),
                    trailing: Text('Hace 1 hora'),
                  ),
                  ListTile(
                    leading: CircleAvatar(backgroundColor: const Color.fromARGB(255, 0, 0, 0)),
                    title: Text('Hermano'),
                    subtitle: Text("Ya vas a llegar a la ca..."),
                    trailing: Text('ayer'),
                  ),
                  ListTile(
                    leading: CircleAvatar(backgroundColor: const Color.fromARGB(255, 76, 201, 233)),
                    title: Text('Estevany'),
                    subtitle: Text("Hola, Como has esta..."),
                    trailing: Text('ayer'),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView(
                children: <Widget>[
                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor: const Color.fromARGB(255, 11, 246, 19),
                      child: Icon(Icons.add, color: Colors.white),
                    ),
                    title: Text('Mi estado'),
                    subtitle: Text('Toca para agregar estado'),
                    onTap: () {
                      _mensaje("Agregar nuevo estado");
                    },
                  ),
                ],
              ),
            ),
            const Center(child: Text("No hay llamadas recientes")),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            _mensaje("Nuevo Chat");
          },
          backgroundColor: const Color.fromARGB(255, 11, 246, 19),
          child: const Icon(Icons.chat),
        ),
      ),
    );
  }
}
