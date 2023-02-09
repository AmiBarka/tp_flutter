import 'package:flutter/material.dart';
import 'package:teste/EXP/exp11.dart';
import 'package:teste/EXP/exp2.dart';
import 'package:teste/EXP/exp4.dart';
import 'package:teste/EXP/exp5.dart';
import 'package:teste/main.dart';

import 'exp1.dart';
import 'exp10.dart';
import 'exp3.dart';
import 'exp6.dart';
import 'exp7.dart';
import 'exp8.dart';

class Drawer_A extends StatelessWidget {
  const Drawer_A({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(children: <Widget>[
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            color: Theme.of(context).primaryColor,
            child: Center(
              child: Column(children: <Widget>[
                Container(
                  //width: 100,
                  //height: 100,
                  margin: const EdgeInsets.only(
                    top: 9,
                    bottom: 0,
                  ),
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                  ),
                  //padding: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Container(
                        //height: 100,
                        //width: 90,
                        child: CircleAvatar(
                          child: Image.asset('img/profile.png'),
                          radius: 50,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 0),
                const Text(
                  'Ami Med Lemine',
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                  ),
                ),
                const Text(
                  'amibarka@gmail.com',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ]),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.check_box_outline_blank),
            title: const Text(
              "TP1",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (c) => const Exp1()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.check_box_outline_blank),
            title: const Text(
              "TP2",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (c) => const Exp2()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.check_box_outline_blank),
            title: const Text(
              "TP3",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (c) => const Exp3()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.check_box_outline_blank),
            title: const Text(
              "setState",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (c) => const MyApp1()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.add),
            title: const Text(
              "Provider",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (c) => const NewsDetectionScreen()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.check_box_outline_blank),
            title: const Text(
              "navigatio-with-push-pop",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (c) => const FirstScreen()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.check_box_outline_blank),
            title: const Text(
              "Navigation_2_0",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (c) => const AccountApp()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.check_box_outline_blank),
            title: const Text(
              "Bloc",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (c) => NameApp()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.check_box_outline_blank),
            title: const Text(
              "Calculatrice",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (c) => Tp1()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.arrow_back),
            title: const Text(
              "sortie",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (c) => const MyApp()));
            },
          ),
        ]),
      ),
    );
  }
}
