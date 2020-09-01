import 'package:flutter/material.dart';
import 'package:mvc_app/src/view/MoviePage/mobile/drawer/drawer.dart';
import 'package:mvc_app/src/view/NavBar/nav.dart';
import 'package:mvc_app/src/view/WebUichallenge/platform.dart';

class HomePage extends StatefulWidget {
  // HomePage hm;
  // HomePage(this.hm);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldKey =
        new GlobalKey<ScaffoldState>();
    open_drawer() => _scaffoldKey.currentState.openDrawer();

    return Scaffold(
      key: _scaffoldKey,
      drawer: Drawer_Widget(),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover, image: AssetImage("images/15460.jpg"))),
          ),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.black.withOpacity(0.4),
                  Colors.black.withOpacity(0.4)
                ],
                begin: Alignment.bottomLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.black, Colors.white.withOpacity(0.3)],
                begin: Alignment.topRight,
                end: Alignment.bottomRight,
              ),
            ),
            child: ListView(
              children: [
                NavBar(
                  onPressed: () => open_drawer(),
                ),
                MoviePage(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
