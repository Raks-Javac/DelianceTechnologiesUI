import 'package:flutter/material.dart';

class MobileView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Align(
        alignment: Alignment.centerLeft,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(top: 150, left: 20, right: 10),
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
                    height: 30,
                  ),
                  Container(
                    width: 500,
                    height: 40,
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
                                      size: 14,
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    "Search through our workspace",
                                    overflow: TextOverflow.fade,
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.grey),
                                  ),
                                ),
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
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            )),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
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
            )
          ],
        ),
      ),
    );
  }
}
