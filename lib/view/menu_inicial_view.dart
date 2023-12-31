import 'package:flutter/material.dart';
import 'package:eventec/view/config_view.dart';
import 'package:eventec/view/eventos_view.dart';
import 'package:eventec/view/inserir_evento_view.dart';
import 'package:eventec/view/sobre_view.dart';

void main() {
  runApp(MaterialApp(
    home: MenuInicialView(),
  ));
}

class MenuInicialView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu Inicial'),
        centerTitle: true,
      ),
      body: Center(
        child: GridView.count(
          crossAxisCount: 2,
          mainAxisSpacing: 16.0,
          crossAxisSpacing: 16.0,
          padding: EdgeInsets.all(16.0),
          childAspectRatio: 1.0,
          children: [
            buildIconButton(context, Icons.settings, Colors.brown, ConfigView()),
            buildIconButton(context, Icons.event, Colors.red, EventosView()),
            buildIconButton(context, Icons.list, Colors.blueAccent, InserirEventoView()),
            buildIconButton(context, Icons.info, Colors.indigo, SobreView()),
          ],
        ),
      ),
    );
  }

  Widget buildIconButton(BuildContext context, IconData iconData, Color iconColor, Widget destinationScreen) {
    return IconButton(
      icon: Icon(
        iconData,
        size: 50.0,
        color: iconColor,
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => destinationScreen),
        );
      },
    );
  }
}

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Configurações'),
      ),
      body: Center(
        child: Text('Tela de Configurações'),
      ),
    );
  }
}

class EventScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Visualizar Eventos'),
      ),
      body: Center(
        child: Text('Tela para visualizar Eventos'),
      ),
    );
  }
}

class ListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inserir Eventos'),
      ),
      body: Center(
        child: Text('Tela para inserir eventos'),
      ),
    );
  }
}

class AboutView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sobre'),
      ),
      body: Center(
        child: Text('Integrantes do trabalho'),
      ),
    );
  }
}
