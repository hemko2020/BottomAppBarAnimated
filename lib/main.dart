import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:bottombar/pages/home.dart';
import 'package:bottombar/pages/users.dart';
import 'package:bottombar/pages/message.dart';
import 'package:bottombar/pages/setting.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.red,
        backgroundColor: Colors.black,
      ),
      home: MyHomePage(title: 'BottomBarAnimated'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildPages(),
      bottomNavigationBar: navyBar(),
    );
  }

  // Widget buildBody() => Center(
  //       child: Text(
  //         'I love Flutter',
  //         style: TextStyle(fontSize: 32),
  //       ),
  //     );

  Widget navyBar() {
    final inactiveColor = Colors.grey;
    return BottomNavyBar(
      backgroundColor: Colors.black,
      containerHeight: 70,
      selectedIndex: index,
      onItemSelected: (index) => setState(() => this.index = index),
      items: <BottomNavyBarItem>[
        BottomNavyBarItem(
          icon: Icon(Icons.apps),
          title: Text('Home'),
          activeColor: Colors.greenAccent.shade400,
          inactiveColor: inactiveColor,
          textAlign: TextAlign.center,
        ),
        BottomNavyBarItem(
          icon: Icon(Icons.people),
          title: Text('Users'),
          activeColor: Colors.pinkAccent.shade400,
          inactiveColor: inactiveColor,
          textAlign: TextAlign.center,
        ),
        BottomNavyBarItem(
          icon: Icon(Icons.message),
          title: Text('Messages'),
          activeColor: Colors.orangeAccent.shade400,
          inactiveColor: inactiveColor,
          textAlign: TextAlign.center,
        ),
        BottomNavyBarItem(
          icon: Icon(Icons.settings),
          title: Text('Settings'),
          activeColor: Colors.deepPurpleAccent.shade400,
          inactiveColor: inactiveColor,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  Widget buildPages() {
    switch (index) {
      case 1:
        return UsersPages();
      case 2:
        return MessagesPages();
      case 3:
        return SettingsPages();
      case 0:
      default:
        return HomePage();
    }
  }
}
