import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
        elevation: 0,
      ),
      body: ListView.separated(
        itemCount: 20,
        itemBuilder: (context, index) => ListTile(
          trailing: const Icon(Icons.arrow_forward_ios_sharp),
          title: const Text('Nombre de la ruta'),
          onTap: () {
            // final route = MaterialPageRoute(
            //    builder: (context) => const ListViewScreen2());
            //Navigator.push(context, route);

            Navigator.pushNamed(context, 'card');
          },
        ),
        separatorBuilder: (_, __) => const Divider(),
      ),
    );
  }
}
