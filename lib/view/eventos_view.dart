import 'package:flutter/material.dart';

class EventosView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Eventos'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('Evento 1'),
            subtitle: Text('Data: 10/10/2023'),
            onTap: () {
              // Lógica ao clicar no evento 1
            },
          ),
          ListTile(
            title: Text('Evento 2'),
            subtitle: Text('Data: 15/10/2023'),
            onTap: () {
              // Lógica ao clicar no evento 2
            },
          ),
          ListTile(
            title: Text('Evento 3'),
            subtitle: Text('Data: 20/10/2023'),
            onTap: () {
              // Lógica ao clicar no evento 3
            },
          ),
          // Adicione mais ListTiles conforme necessário
        ],
      ),
    );
  }
}

