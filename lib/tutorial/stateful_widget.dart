import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TestStateFulWidget extends StatefulWidget {
  const TestStateFulWidget({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _TestStateFulWidget();
}

class _TestStateFulWidget extends State<TestStateFulWidget> {
  int _counter = 0;
  void _incremet() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              _incremet();
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Container(
                height: 40,
                color: Colors.blue,
                child: Center(
                    child: Text(
                  'Contador $_counter',
                  style: const TextStyle(color: Colors.black),
                )),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/lifecycle');
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
              child: Container(
                height: 40,
                color: Colors.blue,
                child: const Center(
                    child: Text(
                  'lifecycle',
                  style: TextStyle(color: Colors.black),
                )),
              ),
            ),
          )
        ],
      ),
    );
  }
}
