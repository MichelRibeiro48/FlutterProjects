import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  'Valor da conta:'),
            ),
            Padding(
              padding: EdgeInsets.only(left: 16),
              child: SizedBox(
                width: 250,
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Valor',
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.number,
                  textInputAction: TextInputAction.done,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 16),
              child: SizedBox(
                width: 250,
                child: FloatingActionButton(
                  onPressed: _incrementCounter,
                  tooltip: 'Increment',
                  child: const Icon(Icons.add),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
