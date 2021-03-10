import 'package:flutter/material.dart';
// import 'package:tictactoe/view/start_view.dart';

class FormView extends StatefulWidget {
  @override
  _FormViewState createState() => _FormViewState();
}

class _FormViewState extends State<FormView> {
  // @override
  // void initState() {
  //   Future.delayed(
  //     Duration(milliseconds: 1500),
  //     () => Navigator.push(
  //       context,
  //       MaterialPageRoute(
  //         builder: (context) => StartPage(),
  //       ),
  //     ),
  //   );
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Text(
              'jajjaja muy gay',
              style: TextStyle(fontSize: 30),
            ),
          ],
        ),
      ),
    );
  }
}
