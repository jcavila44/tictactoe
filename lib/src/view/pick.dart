import 'package:flutter/material.dart';
import 'package:tictactoe/src/bloc/provider.dart';
import 'package:tictactoe/src/bloc/board.dart';
import 'package:tictactoe/src/bloc/sound.dart';

class PickShape extends StatefulWidget {
  _PickPageState createState() => _PickPageState();
}

class _PickPageState extends State<PickShape> {
  final boardService = locator<BoardService>();
  final soundService = locator<SoundService>();

  String groupValue = 'X';
  void setGroupvalue(value) {
    setState(() {
      groupValue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(),
      ),
    );
  }
}
