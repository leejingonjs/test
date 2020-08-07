import 'dart:async';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: TestPage(),
    );
  }
}


class TestPage extends StatefulWidget {
  @override
  _TestPageState createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {

  @override
  Widget build(BuildContext context) {

    StreamController controller = StreamController();
    
    StreamSubscription subscription = controller.stream.listen((event) { print(event); });

    controller.sink.add(3);

    //StreamSubscription subscription2 = controller.stream.listen((event) { print(event); });
    controller.sink.add(2);
    subscription.cancel();

    return Container(
      
    );
  }
}