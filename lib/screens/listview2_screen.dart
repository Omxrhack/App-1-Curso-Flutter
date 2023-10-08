import 'package:flutter/material.dart';

class ListViewScreen2 extends StatelessWidget {
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
  const ListViewScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Appbar ListViewScreen 2'),
        centerTitle: true,
        backgroundColor: Colors.red[900],
      ),
      body: ListView.separated(
        itemCount: options.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(options[index]),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: Colors.red[900],
            ),
            onTap: () {},
          );
        },
        separatorBuilder: (_, __) => const Divider(),
      ),
    );
  }
}
