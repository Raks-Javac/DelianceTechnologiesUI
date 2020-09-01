import 'package:flutter/material.dart';

class DesktopMoviePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(top: 150, left: 80),
          width: MediaQuery.of(context).size.width,
          child: Center(
            child: Align(
              alignment: Alignment.centerLeft,
              child: Container(
                width: 1000,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Community Forum",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Home/ FREELANCE BOARD / App Developers",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 900,
                      height: 60,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(40))),
                      child: Row(
                        children: [
                          Expanded(
                              flex: 3,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 20.0, right: 20),
                                    child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: Icon(
                                        Icons.search,
                                        color: Colors.green,
                                      ),
                                    ),
                                  ),
                                  Text(
                                      "You want to work on clients Projects Patner with us to work on client's projects"),
                                ],
                              )),
                          Expanded(
                              flex: 1,
                              child: Material(
                                borderRadius: BorderRadius.circular(40),
                                color: Colors.green,
                                child: Center(
                                  child: Text(
                                    "REGISTER",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              )),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Text(
                          "Popular Search : ",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          "Getting Started",
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.5),
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
