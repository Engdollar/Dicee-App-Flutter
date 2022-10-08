// ignore_for_file: deprecated_member_use, non_constant_identifier_names

import 'dart:math';

import 'package:flutter/material.dart';
import './success.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          title: Text('Dice App'),
          backgroundColor: Colors.teal,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int RightDiceNumber = 2;

  void _changePhase() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      RightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (leftDiceNumber == RightDiceNumber) ...[
              Sucess(_changePhase),
              // Row(
              //   crossAxisAlignment: CrossAxisAlignment.center,
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     FlatButton(
              //         color: Colors.white,
              //         padding: EdgeInsets.all(8.0),
              //         onPressed: () {
              //           changePhase();
              //         },
              //         child: Text(
              //           "Restart",
              //           style: TextStyle(
              //             color: Colors.black,
              //           ),
              //         ),
              //       ),
              //   ],
              // ),
            ] else ...[
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    _changePhase();
                  },
                  child: Image.asset('images/dice$leftDiceNumber.png'),
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    _changePhase();
                  },
                  child: Image.asset('images/dice$RightDiceNumber.png'),
                ),
              ),
            ]
          ],
        ),
      ),
    );
  }
}
