import 'package:flutter/material.dart';

class TestGestureDetectorWidget extends StatelessWidget {
  const TestGestureDetectorWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '/stateful-widget');
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Container(
              height: 40,
              color: Colors.blue,
              child: const Center(
                  child: Text(
                'StateFulWidget',
                style: TextStyle(color: Colors.red),
              )),
            ),
          ),
        ),
      ),
    );
  }
}
