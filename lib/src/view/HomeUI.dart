import 'package:flutter/material.dart';
import 'package:mvc_app/src/controller/controller1.dart';
import 'package:mvc_pattern/mvc_pattern.dart';

class View extends StatefulWidget {
  @override
  _ViewState createState() => _ViewState();
}

class _ViewState extends StateMVC {
  void initState() {
    super.initState();

    /// Add to StateMVC to then access the State Object's lifecycle events.
    String id = add(Controller());

    /// More than one way to then access your Controller.
    cd = controllerById(id);
    cd = controller;
  }

  Controller cd;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Container(
          height: 200,
          child: Center(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                expander(
                    flex: 1,
                    onPressed: () => cd.incrementCounter(),
                    child: Icon(Icons.add)),
                expander(
                    flex: 3, onPressed: () {}, child: Text("${cd.counter()}")),
                expander(
                    flex: 1,
                    onPressed: () => cd.decrement(),
                    child: Icon(Icons.remove))
              ],
            ),
          )),
        ),
      ),
    );
  }

  Expanded expander({int flex, VoidCallback onPressed, Widget child}) {
    return Expanded(
        flex: flex, child: FlatButton(onPressed: onPressed, child: child));
  }
}
