import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blue,
          appBar: AppBar(
            title: Text('Ask me anything'),
            backgroundColor: Color(0xff1253c5),
          ),
          body: BallPage(),
        ),
      ),
    );

class BallPage extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<BallPage> {
  int ballNumber = 1;
  void handleClick() {
    setState(() {
      ballNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Row(
      children: <Widget>[
        Expanded(
          child: TextButton(
              onPressed: () {
                handleClick();
              },
              child: Image.asset('images/ball$ballNumber.png')),
        )
      ],
    ));
  }
}
