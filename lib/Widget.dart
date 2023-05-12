import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(),
        body: SafeArea(
            top: true,
            child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    ElevatedButton(
                        onPressed: () {},
                        child: const Text("Ini menggunakan elevatedButton")),
                    TextButton(
                        onPressed: () {},
                        child: const Text("Ini menggunakan textButton")),
                    OutlinedButton(
                        onPressed: () {},
                        child: const Text("Ini menggunakan outlineButton")),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.monetization_on))
                  ],
                ))));
  }
}
