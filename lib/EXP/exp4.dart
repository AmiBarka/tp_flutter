import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp1());
}

class MyApp1 extends StatelessWidget {
  const MyApp1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(title: 'Exemple de setState'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({super.key, required this.title});

  String name = '';
  final myController = TextEditingController();

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String name = '';
  final myController = TextEditingController();

  void notify() {
    setState(() {
      name = 'Bienvenue ${myController.text}';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: Container(
            width: 200,
            height: 200,
            child: Column(children: [
              Text('$name'),
              TextField(
                  controller: myController,
                  decoration: const InputDecoration(hintText: 'Nom')),
              ElevatedButton(
                  onPressed: () => notify(), child: const Text('Se connecter'))
            ]),
          ),
        ));
  }
}
