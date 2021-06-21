import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            'Home',
            style: TextStyle(fontSize: 25),
          ),
          backgroundColor: Colors.greenAccent.shade400),
      body: Center(
        child: Text(
          'Home',
          style: TextStyle(fontSize: 40),
        ),
      ),
    );
  }
}
