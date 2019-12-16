import 'package:flutter/material.dart';

import './widgets/post.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram Clone',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          'InstaBook',
          style: TextStyle(
            fontSize: 30,
            fontFamily: 'Acme',
            color: Colors.black,
          ),
        ),
      ),
      body: Post(),
    );
  }
}
