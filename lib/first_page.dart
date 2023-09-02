import 'package:flutter/material.dart';
import 'package:several_flutter_app/second_page.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text("first"),
        ),
        body: Center(
            child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => SecondPage(), fullscreenDialog: true),
            );
          },
          child: const Text("次の画面へ"),
        )));
  }
}
