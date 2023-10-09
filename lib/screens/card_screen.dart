import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Screen'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10,
        ),
        children: const [
          CardCustomOne(),
          CustomCardTwo(
            imgURL: 'https://i.blogs.es/0ca9a6/aa/1366_2000.jpeg',
            title: 'Card Reutilizable Uno',
          ),
          CustomCardTwo(
              imgURL:
                  'https://images.unsplash.com/reserve/Af0sF2OS5S5gatqrKzVP_Silhoutte.jpg?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8Mnx8fGVufDB8fHx8fA%3D%3D&w=1000&q=80',
              title: 'Card Reutilizable Dos'),
          CustomCardTwo(
            imgURL:
                'https://st2.depositphotos.com/1787005/7298/i/450/depositphotos_72987231-stock-photo-lochernhead-scotland.jpg',
            title: 'Card Reutilizable Tres',
          ),
        ],
      ),
    );
  }
}
