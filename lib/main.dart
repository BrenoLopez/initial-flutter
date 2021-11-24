import 'package:flutter/material.dart';
import 'package:initialflutter/tutorial/gesture_detector.dart';
import 'package:initialflutter/tutorial/stateful_widget.dart';

import 'tutorial/lifecycle_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const TestGestureDetectorWidget(),
        '/stateful-widget': (context) => const TestStateFulWidget(),
        '/lifecycle': (context) => const LifecyCleWidget()
      },
    );
  }
}
