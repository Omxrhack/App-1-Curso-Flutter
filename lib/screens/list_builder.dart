import 'package:flutter/material.dart';

class ListBuilderScreen extends StatelessWidget {
  const ListBuilderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MediaQuery.removePadding(
      context: context,
      removeTop: true,
      removeBottom: true,
      child: Scaffold(
        body: ListView.builder(
          itemCount: 30,
          itemBuilder: (BuildContext context, int index) {
            return FadeInImage(
              placeholder: const AssetImage('assets/jar-loading.gif'),
              image: NetworkImage(
                  'https://picsum.photos/500/300?image=${index + 1}'),
            );
          },
        ),
      ),
    );
  }
}
