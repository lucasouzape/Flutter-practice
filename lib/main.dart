import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// R PARA DAR RELOAD
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: const MyHomePage(title: 'Frases do Dia'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _numeroAleatorio = 0;
  final List _frases = [
    'Faça sempre o seu melhor!',
    'E acredite que o melhor possa ser feito!',
    'Não espere, ponha em prática!',
    'Mesmo que pareça difícil, não pare!',
    'Só trabalhando é possível trilhar o caminho!',
    'Tenha coragem!',
    'Descubra quem você realmente é…',
    'Descubra quem é você, e seja essa pessoa. A sua alma foi colocada nesse mundo para ser isso, então viva essa verdade e todo resto virá.',
    'Acredite em milagres, mas não dependa deles.',
    'Não é a carga que o derruba, mas a maneira como você a carrega.',
  ];

  void _incrementCounter() {
    setState(() {
      _numeroAleatorio = Random().nextInt(10); // 0, 1, 2, 3,4,5,6,7,8,9
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'PRessione o botão para gerar uma nova frase',
            ),
            Text(
              _frases[_numeroAleatorio],
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add), // Icon(Icons.add),
      ),
    );
  }
}
