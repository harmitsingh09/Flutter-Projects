import 'package:flutter/material.dart';
import 'package:newsapp/style/theme.dart' as Style;

import 'home_screen.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: AppBar(
          backgroundColor: Style.Colors.mainColor,
          title: Text(
            "NewsApp",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      body: SafeArea(
        child: StreamBuilder<dynamic>(
          // ignore: missing_return
          builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
            return HomeScreen();
          },
        ),
      ),
    );
  }
}
