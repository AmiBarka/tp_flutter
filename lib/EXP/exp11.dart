import 'package:flutter/material.dart';

class Tp1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Tp1App();
  }
}

class Tp1App extends State<Tp1> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Ecremantation :'),
        ),
        body: Center(
          child: Container(
            height: 100,
            width: 200,
            decoration: BoxDecoration(
                color: Colors.orange[100],
                border: Border.all(color: Colors.black, width: 1)),
            child: Column(
              children: [
                Text(
                  counter.toString(),
                  style: const TextStyle(fontSize: 20),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 30,
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          color: Colors.blue[100],
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.black)),
                      child: CircleAvatar(
                        backgroundColor: Color.fromARGB(255, 178, 255, 181),
                        child: IconButton(
                          // alignment: Alignment.center,
                          icon: Icon(
                            Icons.add,
                            color: Colors.black,
                          ),
                          onPressed: () {
                            setState(() {
                              counter++;
                            });
                          },
                        ),
                        radius: 30,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          color: Colors.orange[100],
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.black)),
                      child: CircleAvatar(
                        backgroundColor: Colors.orange[100],
                        child: IconButton(
                          // alignment: Alignment.center,
                          icon: Icon(
                            Icons.remove,
                            color: Colors.black,
                          ),
                          onPressed: () {
                            setState(() {
                              counter--;
                            });
                          },
                        ),
                        radius: 30,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: 38,
                      width: 38,
                      decoration: BoxDecoration(
                          color: Colors.orange[100],
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.black)),
                      child: CircleAvatar(
                        backgroundColor: Colors.orange[100],
                        child: IconButton(
                          // alignment: Alignment.center,
                          icon: Icon(
                            Icons.refresh_outlined,
                            color: Colors.black,
                          ),
                          onPressed: () {
                            setState(() {
                              counter = 0;
                            });
                          },
                        ),
                        radius: 30,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
