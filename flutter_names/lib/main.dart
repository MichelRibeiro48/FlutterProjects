import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class NomeAmigo extends StatelessWidget {
  final String text;
  final Color color;
  const NomeAmigo(this.text, this.color, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: DecoratedBox(
          decoration: BoxDecoration(color: color),
          child: Text(
            text,
            style: const TextStyle(fontSize: 50),
          )),
    );
  }
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              NomeAmigo('João', Colors.blue),
              NomeAmigo('Maria', Colors.green)
            ],
          ),
        ),
      ),
    );
  }
}
