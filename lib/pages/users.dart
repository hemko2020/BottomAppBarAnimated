import 'package:flutter/material.dart';

class UsersPages extends StatefulWidget {
  @override
  _UsersPagesState createState() => _UsersPagesState();
}

class _UsersPagesState extends State<UsersPages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            'Users',
            style: TextStyle(fontSize: 25),
          ),
          backgroundColor: Colors.pinkAccent.shade400),
      body: Center(
        child: Text(
          'Users',
          style: TextStyle(fontSize: 40),
        ),
      ),
    );
  }
}
