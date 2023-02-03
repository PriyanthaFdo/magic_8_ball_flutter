import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      const MaterialApp(home: BallPage()),
    );

class BallPage extends StatelessWidget {
  const BallPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[300],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: const Text(
          'Ask Me Anything',
        ),
      ),
      body: const MagicBallBody(),
    );
  }
}

class MagicBallBody extends StatefulWidget {
  const MagicBallBody({Key? key}) : super(key: key);

  @override
  State<MagicBallBody> createState() => _MagicBallBodyState();
}

class _MagicBallBodyState extends State<MagicBallBody> {
  int magicBallNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          setState(() {
            magicBallNumber = Random().nextInt(5) + 1;
          });
        },
        child: Image.asset('images/ball$magicBallNumber.png'),
      ),
    );
  }
}
