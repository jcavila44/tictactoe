import 'package:flutter/material.dart';
import 'package:tictactoe/view/start_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => StartPage(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
