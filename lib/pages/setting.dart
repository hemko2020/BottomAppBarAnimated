import 'package:flutter/material.dart';

class SettingsPages extends StatefulWidget {
  @override
  _SettingsPagesState createState() => _SettingsPagesState();
}

class _SettingsPagesState extends State<SettingsPages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings', style: TextStyle(fontSize: 25)),
        backgroundColor: Colors.deepPurpleAccent.shade400,
      ),
      body: Center(
        child: Text(
          'Settings',
          style: TextStyle(fontSize: 40),
        ),
      ),
    );
  }
}
