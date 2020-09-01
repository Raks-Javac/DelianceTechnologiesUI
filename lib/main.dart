import 'package:flutter/material.dart';
import 'package:mvc_app/src/view/WebUichallenge/determiningPage.dart';

void main() => runApp(Mvc_App());

class Mvc_App extends StatelessWidget {
  // Mvc_App({Key key}) : super(con: Controller(), key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
