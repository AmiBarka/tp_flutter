import 'package:flutter/material.dart';
import 'package:teste/EXP/drawer.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Ami med",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Bonjour sur App TP"),
          backgroundColor: Color.fromARGB(255, 16, 23, 29),
          centerTitle: true,
        ),
        drawer: const Drawer_A(),
        body: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
            image: AssetImage("img/panda-14.gif"),
            fit: BoxFit.cover,
          )),
        ),
      ),
    );
  }
}
