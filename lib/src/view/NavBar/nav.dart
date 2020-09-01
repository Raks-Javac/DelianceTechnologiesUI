import 'package:flutter/material.dart';
import 'package:mvc_app/src/view/WebUichallenge/determiningPage.dart';

class NavBar extends StatefulWidget {
  Function onPressed;
  NavBar({this.onPressed});

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 1200) {
        return DesktopNavBar();
      } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
        return DesktopNavBar();
      } else {
        return MobileNavBar(
          onPressed: this.widget.onPressed,
        );
      }
    });
  }
}

class DesktopNavBar extends StatefulWidget {
  @override
  _DesktopNavBarState createState() => _DesktopNavBarState();
}

class _DesktopNavBarState extends State<DesktopNavBar> {
  List<String> navBar = [
    'DOCUMENTATION',
    'KNOWLEDGE BASE',
    'FORUMS',
    'OPEN A TICKET',
    'CONTACT US',
    'COVID19',
    'SHOP'
  ];
  double size = 10;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          Expanded(
              flex: 1,
              child:
                  Align(alignment: Alignment.center, child: movieSite_name())),
          Expanded(
              flex: 3,
              child: Container(
                margin: EdgeInsets.only(right: 20),
                width: double.infinity,
                child: GestureDetector(
                    onTap: () {
                      setState(() {
                        double sizer = 13;
                        sizer = size;
                      });
                    },
                    child: nav_list(size)),
              )),
        ],
      ),
    );
  }

  Padding movieSite_name() {
    return Padding(
      padding: const EdgeInsets.only(right: 15.0, top: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "DELIENCE",
            style: TextStyle(
                fontFamily: "roboto",
                color: Colors.white,
                fontSize: 25,
                letterSpacing: 5,
                fontWeight: FontWeight.bold),
          ),
          Text(
            "TECHNOLOGIES",
            style: TextStyle(
                fontFamily: "roboto",
                color: Colors.white,
                fontSize: 15,
                letterSpacing: 2,
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  Container home_widget() {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
          border: Border.fromBorderSide(BorderSide(color: Colors.grey)),
          borderRadius: BorderRadius.all(Radius.circular(5))),
      child: Padding(
        padding: const EdgeInsets.all(1.0),
        child: Text(
          "Home",
          style: TextStyle(
              color: Colors.white,
              fontFamily: "ub",
              fontSize: 18,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  Align nav_list(double size) {
    return Align(
      alignment: Alignment.centerRight,
      child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: navBar
              .map((e) => Padding(
                    padding: const EdgeInsets.only(left: 30.0),
                    child: Text(
                      e,
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: "ub",
                          letterSpacing: 1,
                          fontSize: size,
                          fontWeight: FontWeight.w500),
                    ),
                  ))
              .toList()),
    );
  }

  Container search() {
    return Container(
      width: 170,
      height: 30,
      padding: EdgeInsets.only(left: 5),
      decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: Row(
        children: [
          Icon(Icons.search, size: 20),
          SizedBox(width: 10),
          Text(
            "Search",
            style: TextStyle(
              fontSize: 15,
            ),
          )
        ],
      ),
    );
  }
}

class MobileNavBar extends StatelessWidget {
  Function onPressed;
  MobileNavBar({this.onPressed});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        margin: EdgeInsets.only(top: 10),
        height: 60,
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.2),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: IconButton(
                    onPressed: this.onPressed,
                    icon: Icon(Icons.format_align_left, color: Colors.green)),
              ),
            ),
            Expanded(
              flex: 3,
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
              ),
            ),
            Expanded(
              flex: 1,
              child: Align(
                alignment: Alignment.centerRight,
                child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.search, color: Colors.green)),
                  SizedBox(width: 15),
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//  Center(
//                       child: TextField(
//                         decoration: InputDecoration.collapsed(
//                             focusColor: Colors.black, hintText: "Search"),
//                       ),
//                     ),
