import 'package:flutter/material.dart';

class ListViewScreen extends StatelessWidget {
  final options = const [
    'Uno',
    'Dos',
    'Tres',
    'Cuatro',
    'Cinco',
    'Seis',
    'Siete',
    'Ocho',
    'Nueve',
    'Diez'
  ];
  const ListViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Appbar ListViewScreen'),
      ),
      body: ListView(
        children: [
          ...options
              .map(
                (game) => ListTile(
                  title: Text(game),
                  trailing: const Icon(Icons.arrow_forward_ios),
                ),
              )
              .toList()
        ],
      ),
    );
  }
}
