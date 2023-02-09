import 'package:flutter/material.dart';

void main() {
  runApp(const AccountApp());
}

class AccountApp extends StatefulWidget {
  const AccountApp({super.key});

  @override
  State<AccountApp> createState() => _AccountAppState();
}

class _AccountAppState extends State<AccountApp> {
  int routeID = 0;

  onScreenChange(newRouteID) {
    setState(() {
      routeID = newRouteID;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Navigator(
            pages: [
          if (routeID == 0 || routeID == 1)
            MaterialPage(child: LoginScreen(onScreenChange)),
          if (routeID == 2) MaterialPage(child: LogoutScreen(onScreenChange))
        ],
            onPopPage: ((route, result) {
              return route.didPop(result);
            })));
  }
}

class LoginScreen extends StatelessWidget {
  final Function onScreenChange;

  const LoginScreen(this.onScreenChange);

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
                onScreenChange(2);
              }),
        ));
  }
}

class LogoutScreen extends StatelessWidget {
  final Function onScreenChange;

  const LogoutScreen(this.onScreenChange);

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
                onScreenChange(1);
              }),
        ));
  }
}
