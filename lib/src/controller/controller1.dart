// import 'package:mvc_app/src/model/data.dart';
// import 'package:mvc_pattern/mvc_pattern.dart';

// class Controller extends ControllerMVC {
//   final md = Model();
//   increment() => setState(() => md.counter++);
//   decrement() => setState(() => md.counter--);
//   counter()=> md.counter;
// }

// class Controller extends ControllerMVC {
//   /// Singleton Factory
//   factory Controller() {
//     if (_this == null) _this = Controller._();
//     return _this;
//   }
//   static Controller _this;

//   Controller._();

//   /// Allow for easy access to 'the Controller' throughout the application.
//   static Controller get con => _this;

//   int get counter => _counter;
//   int _counter = 0;
//   void incrementCounter() => _counter++;
// }

import 'package:mvc_app/src/model/data.dart';
import 'package:mvc_pattern/mvc_pattern.dart';

class Controller extends AppConMVC {
  Model md;

  /// Singleton Factory
  factory Controller() => _this;
  static final Controller _this = Controller._();
  Controller._();

  int ccounter = 0;
  int counter() => ccounter;
  // setState(() => Model.incrementCounter()
  void incrementCounter() => setState(() => ccounter++);
  void decrement() => setState(() => ccounter--);
}
