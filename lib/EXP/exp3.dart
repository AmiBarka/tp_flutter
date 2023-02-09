import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'drawer.dart';

class Exp3 extends StatefulWidget {
  const Exp3({Key? key}) : super(key: key);

  @override
  State<Exp3> createState() => _Exp3State();
}

class _Exp3State extends State<Exp3> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Ami med",
      home: Scaffold(
        appBar: AppBar(
          title: const Text(" TP3"),
          backgroundColor: Colors.blue,
          centerTitle: true,
        ),
        drawer: const Drawer_A(),
        body: Stack(
          children: <Widget>[
            Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                image: AssetImage("img/2.jpg"),
                fit: BoxFit.cover,
              )),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                alignment: Alignment.bottomRight,
                child: Container(
                  color: const Color.fromARGB(255, 165, 216, 241),
                  height: 130.0,
                  width: 400.0,
                  child: const Text(
                    "Bonjour Ami\n"
                    "cv comment vas tu tu vas bien  oui merci",
                    style: TextStyle(
                      fontSize: 20.0,
                      // letterSpacing: CupertinoIcons.textformat_123,
                      color: Colors.black87,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
