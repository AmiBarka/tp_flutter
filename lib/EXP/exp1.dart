import 'package:flutter/material.dart';

import 'drawer.dart';

class Exp1 extends StatelessWidget {
  const Exp1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //debugShowCheckedModeBanner: false,
      title: "Ami med",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("TP1"),
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Radio(value: 1, groupValue: 0, onChanged: (value) {}),
                    const SizedBox(width: 10),
                    const Text("Ajouter"),
                    Radio(value: 1, groupValue: 1, onChanged: (value) {}),
                    const Text("Modifier"),
                    const SizedBox(width: 10),
                    Radio(value: 1, groupValue: 0, onChanged: (value) {}),
                    const Text("Suprimer"),
                  ],
                ),
                const TextField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      icon: Icon(Icons.perm_identity),
                      hintText: 'Ami',
                      labelText: 'Nom'),
                ),
                const SizedBox(width: 20),
                const TextField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      icon: Icon(Icons.accessibility_new_sharp),
                      hintText: 'med',
                      labelText: 'Prenom'),
                ),
                const SizedBox(width: 20),
                const TextField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      icon: Icon(Icons.add_home_work_outlined),
                      hintText: 'melah',
                      labelText: 'Adresse'),
                ),
                //const SizedBox(width: 30),

                Row(
                  children: <Widget>[
                    Column(
                      children: [
                        Row(
                          children: [
                            Checkbox(value: true, onChanged: (value) {}),
                            const Text("Baccalaureat"),
                          ],
                        ),
                        //const SizedBox(width: 10),
                        Row(
                          children: [
                            Checkbox(value: false, onChanged: (value) {}),
                            const SizedBox(
                              width: 50.0,
                            ),
                            const Text("BTS"),
                          ],
                        ),
                        // const SizedBox(width: 10),
                        Row(
                          children: [
                            Checkbox(value: true, onChanged: (value) {}),
                            const SizedBox(
                              width: 30.0,
                            ),
                            const Text("Licence"),
                          ],
                        ),
                        //const SizedBox(width: 10),
                        Row(
                          children: [
                            Checkbox(value: false, onChanged: (value) {}),
                            const SizedBox(
                              width: 30.0,
                            ),
                            const Text("Master"),
                          ],
                        ),
                        Row(
                          children: [
                            Checkbox(value: false, onChanged: (value) {}),
                            const SizedBox(
                              width: 20.0,
                            ),
                            const Text("Doctorat"),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(width: 100),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Center(
                          child: Container(
                              margin: EdgeInsets.all(10.0),
                              width: 100.0,
                              height: 100.0,
                              color: Colors.blueAccent,
                              child: const Center(
                                child: Text(
                                  "CONFIRMER",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              )),
                        ),
                        //const SizedBox(width: 10),
                        const Text(
                          "Resultat",
                          style: TextStyle(
                            fontSize: 19,
                          ),
                        ),
                      ],
                    )
                  ],
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
