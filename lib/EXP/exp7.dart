import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/login': (context) => const LoginScreen(),
        '/logout': (context) => const LogoutScreen()
      },
      home: const LoginScreen()));
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.orange,
        appBar:
            AppBar(backgroundColor: Colors.grey, title: Text('Login Screen')),
        body: Center(
          child: ElevatedButton(
              child: Text('Login'),
              style: ElevatedButton.styleFrom(shadowColor: Colors.blueGrey),
              onPressed: () {
                Navigator.pushNamed(context, '/logout');
              }),
        ));
  }
}

class LogoutScreen extends StatelessWidget {
  const LogoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue,
        appBar:
            AppBar(backgroundColor: Colors.grey, title: Text('Logout Screen')),
        body: Center(
          child: ElevatedButton(
              child: Text('Logout'),
              style: ElevatedButton.styleFrom(shadowColor: Colors.blueGrey),
              onPressed: () {
                Navigator.pushNamed(context, '/login');
              }),
        ));
  }
}
