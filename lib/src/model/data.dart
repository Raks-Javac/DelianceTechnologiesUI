class Model {
  static int get counter => _counter;
  static int _counter = 0;
  static int incrementCounter() => _counter += 1;
  static int decrementer() => _counter += 1;
  reset() => _counter = 0;
}
