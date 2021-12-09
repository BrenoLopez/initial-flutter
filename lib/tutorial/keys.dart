import 'dart:math';

import 'package:flutter/material.dart';

class KeyWidget extends StatefulWidget {
  const KeyWidget({Key? key}) : super(key: key);

  @override
  _KeyWidgetState createState() => _KeyWidgetState();
}

class _KeyWidgetState extends State<KeyWidget> {
  late List<Widget> tiles;
  @override
  void initState() {
    super.initState();
    tiles = [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: StatefulColorFulTile(
          key: Key('1'),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: StatefulColorFulTile(
          key: Key('2'),
        ),
      )
    ];
  }

  @override
  Widget build(BuildContext context) {
    swapTiles() {
      setState(() {
        tiles.insert(1, tiles.removeAt(0));
      });
    }

    return Scaffold(
      body: SafeArea(
        child: Row(
          children: tiles,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.sentiment_very_satisfied),
        onPressed: swapTiles,
      ),
    );
  }
}

class StatefulColorFulTile extends StatefulWidget {
  const StatefulColorFulTile({Key? key}) : super(key: key);

  @override
  State<StatefulColorFulTile> createState() => _StatefulColorFulTileState();
}

class _StatefulColorFulTileState extends State<StatefulColorFulTile> {
  late Color color;
  @override
  void initState() {
    super.initState();
    color = Colors.primaries[Random().nextInt(Colors.primaries.length)];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      color: color,
    );
  }
}
