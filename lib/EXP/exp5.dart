import 'package:flutter/material.dart';

class NewsDetectionScreen extends StatefulWidget {
  const NewsDetectionScreen({Key? key}) : super(key: key);

  @override
  _NewsDetectionScreenState createState() => _NewsDetectionScreenState();
}

class _NewsDetectionScreenState extends State<NewsDetectionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fake News Detection'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Detect Fake News',
            ),
            const TextField(
              decoration: InputDecoration(
                hintText: 'Enter the news article or link here',
              ),
            ),
            RaisedButton(
              child: const Text('Check News'),
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
