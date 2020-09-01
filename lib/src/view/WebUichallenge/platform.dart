import 'package:flutter/material.dart';
import 'package:mvc_app/src/view/MoviePage/mobile/Mobile.dart';
import 'package:mvc_app/src/view/MoviePage/desktop/desktopView.dart';

class MoviePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 1200) {
        return DesktopMoviePage();
      } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
        return DesktopMoviePage();
      } else {
        return MobileView();
      }
    });
  }
}
