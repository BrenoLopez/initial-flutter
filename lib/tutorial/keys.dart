import 'package:flutter/material.dart';

class PositionedTiles extends StatefulWidget {
  const PositionedTiles({Key? key}) : super(key: key);

  @override
  _PositionedTilesState createState() => _PositionedTilesState();
}

class _PositionedTilesState extends State<PositionedTiles> {
  late List<Widget> tiles;
  @override
  void initState() {
    super.initState();
    tiles = [];
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
