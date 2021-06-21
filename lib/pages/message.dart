import 'package:flutter/material.dart';

class MessagesPages extends StatefulWidget {
  @override
  _MessagesPagesState createState() => _MessagesPagesState();
}

class _MessagesPagesState extends State<MessagesPages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            'Messages',
            style: TextStyle(fontSize: 25),
          ),
          backgroundColor: Colors.orangeAccent.shade400),
      body: Center(
        child: Text(
          'Messages',
          style: TextStyle(fontSize: 40),
        ),
      ),
    );
  }
}
