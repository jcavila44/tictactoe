import 'package:flutter/material.dart';
// import 'package:tictactoe/view/splash_view.dart';
import 'package:tictactoe/view/start_view.dart';
// import 'package:tictactoe/view/start_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Poppins'),
      debugShowCheckedModeBanner: false,
      // home: SplashScreen(),
      home: StartPage(),
    );
  }
}
