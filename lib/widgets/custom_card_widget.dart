import 'package:flutter/material.dart';
import 'package:listflutter/theme/theme.dart';

class CardCustomOne extends StatelessWidget {
  const CardCustomOne({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            leading: Icon(
              Icons.account_balance,
              color: TemaApp.colorPrincipal,
            ),
            title: Text('Soy el titulo de la tarjeta'),
            subtitle: Text(
              'Occaecat minim exercitation et sit fugiat. Exercitation mollit pariatur nostrud Lorem aliquip aliquip eiusmod amet laborum magna eiusmod qui cillum qui. Duis cillum incididunt excepteur non fugiat dolore adipisicing enim esse excepteur qui eu. Anim et est voluptate ex. Quis magna officia do reprehenderit fugiat est pariatur proident do. Consequat enim quis veniam eu deserunt laboris minim adipisicing adipisicing.',
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text('Ok'),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text('Cncel'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
