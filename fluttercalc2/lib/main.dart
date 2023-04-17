import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(InputPage());
}

class InputPage extends StatefulWidget {
  const InputPage({super.key});
  @override
  _InputPage createState() => _InputPage();
}

class _InputPage extends State<InputPage> {
  double _valor = 0;
  double valorFixo = 0;
  double porcentagem = 0;
  void onPressed() {
    setState(() {
      valorFixo = _valor * porcentagem / 100 + _valor;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(16),
                child: Text(
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    'Valor da conta:'),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: SizedBox(
                  width: 250,
                  child: TextField(
                    onChanged: (text) {
                      _valor = double.parse(text);
                    },
                    decoration: const InputDecoration(
                      labelText: 'Valor',
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.number,
                    textInputAction: TextInputAction.done,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8, left: 16),
                child: SizedBox(
                  width: 250,
                  child: TextField(
                    onChanged: (text) {
                      porcentagem = double.parse(text);
                    },
                    decoration: const InputDecoration(
                      labelText: 'Porcentagem',
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.number,
                    textInputAction: TextInputAction.done,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, top: 10),
                child: SizedBox(
                  width: 250,
                  child: ElevatedButton(
                    onPressed: onPressed,
                    style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.black,
                        backgroundColor: Colors.grey),
                    child: const Text('Calcular'),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text(
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 20),
                    'Valor Total R\$ $valorFixo'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
