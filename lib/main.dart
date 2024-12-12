import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Drawer Navigation',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
      routes: {
        '/screen1': (context) => Screen1(),
        '/screen2': (context) => Screen2(),
        '/screen3': (context) => Screen3(),
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menú Drawer App'),
      ),
      drawer: AppDrawer(),
      body: Center(
        child: Text(
          'Hola, Soy Gabriel Pantoja :D!!!',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage('assets/image/qwerty.png'), // Agrega tu imagen aquí
                ),
                SizedBox(height: 10),
                Text(
                  'Hola, Usuario!',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Inicio'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/');
            },
          ),
          ListTile(
            leading: Icon(Icons.star),
            title: Text('ruta estrella'),
            onTap: () {
              Navigator.pushNamed(context, '/screen1');
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('configuracion'),
            onTap: () {
              Navigator.pushNamed(context, '/screen2');
            },
          ),
          ListTile(
            leading: Icon(Icons.info),
            title: Text('informacion'),
            onTap: () {
              Navigator.pushNamed(context, '/screen3');
            },
          ),
        ],
      ),
    );
  }
}

class Screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pantalla 1'),
      ),
      body: Center(
        child: Text(
          'en este proyecto estan las rutas y el menu Drawer',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pantalla 2'),
      ),
      body: Center(
        child: Text(
          'aqui podria ir alguna configuracion de la app',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

class Screen3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pantalla 3'),
      ),
      body: Center(
        child: Text(
          'aqui podria ir informacion sobre la app',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
