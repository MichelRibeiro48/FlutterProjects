import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

final List<String> nomes = <String>[
  'João',
  'Maria',
  'Roberto',
  'Denis',
  'Michel'
];

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: nomes.length,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              SizedBox(
                width: 100,
                child: Card(
                  color: Colors.blue,
                  child: ListTile(
                    title: Center(child: Text(nomes[index])),
                  ),
                ),
              ),
            ],
          );
        });
  }
}
