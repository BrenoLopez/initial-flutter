import 'package:flutter/material.dart';

class LifecyCleWidget extends StatefulWidget {
  const LifecyCleWidget({Key? key}) : super(key: key);

  @override
  _LifecyCleWidgetState createState() => _LifecyCleWidgetState();
}

class _LifecyCleWidgetState extends State<LifecyCleWidget> {
  int value = 0;
  @override
  void initState() {
    super.initState();
    print('init state');
  }

  @override
  void dispose() {
    super.dispose();
    print('dispose');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
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
                'proximo',
                style: TextStyle(color: Colors.black),
              )),
            ),
          ),
        ),
      ),
    );
  }
}
