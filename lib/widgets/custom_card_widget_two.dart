import 'package:flutter/material.dart';

class CustomCardTwo extends StatelessWidget {
  final String imgURL;
  final String title;
  const CustomCardTwo({Key? key, required this.imgURL, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      elevation: 10,
      child: Column(
        children: [
          FadeInImage(
            image: NetworkImage(imgURL),
            placeholder: const AssetImage('assets/jar-loading.gif'),
            width: double.infinity,
            height: 300,
            fit: BoxFit.cover,
          ),
          Container(
            padding: const EdgeInsets.only(right: 10, bottom: 20, top: 20),
            child: Text(title),
          ),
        ],
      ),
    );
  }
}
