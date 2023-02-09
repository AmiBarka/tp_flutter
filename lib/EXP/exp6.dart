import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false, home: const FirstScreen()));
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.orange,
        appBar:
            AppBar(backgroundColor: Colors.grey, title: Text('First Screen')),
        body: Center(
          child: ElevatedButton(
              child: Text('Login'),
              style: ElevatedButton.styleFrom(shadowColor: Colors.blueGrey),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SecondScreen()));
              }),
        ));
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue,
        appBar:
            AppBar(backgroundColor: Colors.grey, title: Text('Second Screen')),
        body: Center(
          child: ElevatedButton(
              child: Text('Home'),
              style: ElevatedButton.styleFrom(shadowColor: Colors.blueGrey),
              onPressed: () {
                Navigator.pop(context);
              }),
        ));
  }
}
