import 'package:flutter/material.dart';

//import 'package:flutter/cupertino.dart';

import 'drawer.dart';

class Exp2 extends StatelessWidget {
  const Exp2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //debugShowCheckedModeBanner: false,
      title: "Ami med",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("TP2"),
          backgroundColor: Colors.blue,
          centerTitle: true,
        ),
        drawer: const Drawer_A(),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  child: Image.asset('img/profile.png'),
                  radius: 100,
                  //backgroundImage:Im(''),
                ),
                const Text(
                  "Utilisateur de l'application",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                const SizedBox(height: 15),
                Row(
                  children: <Widget>[
                    Column(
                      children: [
                        Row(
                          children: const <Widget>[
                            Text(
                              "Element",
                              style: TextStyle(
                                fontSize: 19,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 15),
                        Row(
                          children: const <Widget>[
                            Text(
                              "Rendez-vous",
                              style: TextStyle(
                                fontSize: 13,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 15),
                        Row(
                          children: const <Widget>[
                            Text(
                              "Suivi",
                              style: TextStyle(
                                fontSize: 13,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 15),
                        Row(
                          children: const <Widget>[
                            Text(
                              "Notification",
                              style: TextStyle(
                                fontSize: 13,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(width: 200),
                    Column(
                      children: [
                        Row(
                          children: const <Widget>[
                            Text(
                              "Nombre",
                              style: TextStyle(
                                fontSize: 19,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 15),
                        Row(
                          children: const <Widget>[
                            Text(
                              "1",
                              style: TextStyle(
                                fontSize: 13,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 15),
                        // const SizedBox(width: 10),
                        Row(
                          children: const <Widget>[
                            Text(
                              "2",
                              style: TextStyle(
                                fontSize: 13,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 15),
                        //const SizedBox(width: 10),
                        Row(
                          children: const <Widget>[
                            Text(
                              "7",
                              style: TextStyle(
                                fontSize: 13,
                              ),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(height: 15),

                SingleChildScrollView(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Column(
                        children: [
                          Row(
                            children: [
                              Radio(
                                  value: 1,
                                  groupValue: 0,
                                  onChanged: (value) {}),
                              const SizedBox(
                                width: 0.0,
                              ),
                              const Text("Rendez-vou"),
                            ],
                          ),
                          //const SizedBox(width: 10),
                          Row(
                            children: [
                              Radio(
                                  value: 1,
                                  groupValue: 1,
                                  onChanged: (value) {}),
                              const SizedBox(
                                width: 25.0,
                              ),
                              const Text("Urgence"),
                            ],
                          ),
                          // const SizedBox(width: 10),
                          Row(
                            children: [
                              Radio(
                                  value: 1,
                                  groupValue: 0,
                                  onChanged: (value) {}),
                              const SizedBox(
                                width: 45.0,
                              ),
                              const Text("Suivi"),
                            ],
                          ),
                          //const SizedBox(width: 10),
                        ],
                      ),
                      //const SizedBox(width: 50),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.asset(
                            'img/flutter.png',
                            height: 30,
                            width: 100,
                          ),

                          Center(
                            child: Container(
                                margin: const EdgeInsets.all(10.0),
                                width: 100.0,
                                height: 30.0,
                                color: Colors.blueAccent,
                                child: const Center(
                                  child: Text(
                                    "Envoyer",
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                )),
                          ),
                          //const SizedBox(width: 10),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          const Text(
                            "QLINIQUE",
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),

                          Center(
                            child: Container(
                                margin: EdgeInsets.all(10.0),
                                width: 50.0,
                                height: 30.0,
                                color: Colors.blueAccent,
                                child: const Center(
                                  child: Text(
                                    "Annuler",
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                )),
                          ),
                          //const SizedBox(width: 10),
                        ],
                      )
                    ],
                  ),
                ),

                //const SizedBox(width: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
