import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stan lee'),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 10),
            child: CircleAvatar(
              backgroundColor: Colors.red[900],
              child: const Text('SL'),
            ),
          ),
        ],
      ),
      body: const Center(
        child: CircleAvatar(
          maxRadius: 100,
          backgroundImage: NetworkImage(
              'https://media.es.wired.com/photos/631ecb16eca5c77cdd70b8df/3:2/pass/Marvel-To-Digitally-Resurrect-Stan-Lee-Culture-627159542.jpg'),
        ),
      ),
    );
  }
}
