import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);

  void displayDialogIOS(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return const CupertinoAlertDialog(
          title: Text('Alert Dialog IOS'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Contenido de la alerta IOS'),
            ],
          ),
        );
      },
    );
  }

  void displayDialogAndroid(BuildContext context) {
    //
    showDialog(
      barrierDismissible: true,
      context: context,
      builder: (context) {
        return const AlertDialog(
          elevation: 5,
          title: Text('Alert Dialog Android'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Contenido de la alerta de Android'),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Appbar AlertScreen'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => Platform.isIOS
              ? displayDialogIOS(context)
              : displayDialogAndroid(context),
          child: const Text('Mostrar Alert'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.close),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
