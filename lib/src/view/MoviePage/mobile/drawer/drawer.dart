import 'package:flutter/material.dart';

class Drawer_Widget extends StatelessWidget {
  Color theme_color = Colors.green[400];

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: theme_color,
        child: ListView(
          children: [
            DrawerHeader(
                child: Center(
                    child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "DELIENCE",
                  style: TextStyle(
                      fontFamily: "ub",
                      color: Colors.white,
                      letterSpacing: 10,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "Technologies",
                    style: TextStyle(
                        fontFamily: "ub",
                        color: Colors.white,
                        letterSpacing: 1,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ))),
            listTile(onTap: () {}, text: "Home", cn: Icons.home),
            listTile(onTap: () {}, text: "Home", cn: Icons.home),
            listTile(onTap: () {}, text: "Home", cn: Icons.home),
            listTile(onTap: () {}, text: "Home", cn: Icons.home),
            listTile(onTap: () {}, text: "Home", cn: Icons.home),
            listTile(onTap: () {}, text: "Home", cn: Icons.home),
          ],
        ),
      ),
    );
  }

  ListTile listTile({VoidCallback onTap, String text, IconData cn}) {
    return ListTile(
      onTap: onTap,
      title: Text(
        text,
        style: TextStyle(color: Colors.white, fontSize: 20),
      ),
      trailing: Icon(
        cn,
        color: Colors.white,
      ),
    );
  }
}
