import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text("second"),
        ),
        body: Center(
            child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text("前の画面へ"),
        )));
  }
}
