import 'package:flutter/material.dart';
import 'package:several_flutter_app/second_page.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    String nameText = "";

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text("first"),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('../images/unnamed.png'),
                TextField(onChanged: (text) => {nameText = text}),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SecondPage(nameText),
                          fullscreenDialog: true),
                    );
                  },
                  child: const Text("次の画面へ"),
                ),
              ],
            ),
          ),
        ));
  }
}
