import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: ChoreyCounter(),
    );
  }
}

class ChoreyCounter extends StatefulWidget {
  const ChoreyCounter({Key key}) : super(key: key);

  @override
  _ChoreyCounterState createState() => _ChoreyCounterState();
}

class _ChoreyCounterState extends State<ChoreyCounter> {
  var _a_point = 0;
  var _b_point = 0;

  var _a_game = 0;
  var _b_game = 0;

  void _incrementAPoint() {
    setState(() {
      _a_point++;
    });
  }

  void _incrementBPoint() {
    setState(() {
      _b_point++;
    });
  }

  void _incrementAGame() {
    setState(() {
      _a_game++;
    });
  }

  void _incrementBGame() {
    setState(() {
      _b_game++;
    });
  }

  void _decrementAPoint() {
    setState(() {
      _a_point--;
    });
  }

  void _decrementBPoint() {
    setState(() {
      _b_point--;
    });
  }

  void _decrementAGame() {
    setState(() {
      _a_game--;
    });
  }

  void _decrementBGame() {
    setState(() {
      _b_game--;
    });
  }

  void _loveAll() {
    setState(() {
      _a_point = 0;
      _b_point = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('得点板'),
          backgroundColor: Colors.black45,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                flex: 3,
                child: InkWell(
                  onTap: () {
                    if (_a_point >= 10 && _a_point >= _b_point + 1) {
                      _a_point = 0;
                      _b_point = 0;
                      _incrementAGame();
                    } else {
                      _incrementAPoint();
                    }
                  },
                  child: Column(
                    children: [
                      Expanded(
                        flex: 9,
                        child: Container(
                          padding: const EdgeInsets.all(20),
                          color: Colors.cyan,
                          child: Column(
                            children: [
                              Text('sotaro'),
                              Text('$_a_game'),
                              Text('$_a_point'),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(flex: 1, child: Text('$_a_game - $_b_game')),
              Expanded(
                flex: 3,
                child: InkWell(
                  onTap: () {
                    if (_b_point >= 10 && _b_point >= _a_point + 1) {
                      _b_point = 0;
                      _a_point = 0;
                      _incrementBGame();
                    } else {
                      _incrementBPoint();
                    }
                  },
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    color: Colors.deepOrangeAccent,
                    child: Column(
                      children: [
                        Text('takeshi'),
                        Text('$_b_game'),
                        Text('$_b_point'),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
