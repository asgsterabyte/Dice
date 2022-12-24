import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Dice extends StatefulWidget {
  const Dice({Key? key}) : super(key: key);

  @override
  State<Dice> createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  int leftDice = 1;
  int rightDice = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      appBar: AppBar(
        title: Text('Dice Game'),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.redAccent,
      ),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(32.0),
                child: Row(
                  children: [
                    Expanded(child: Image.asset('assets/images/dice$leftDice.png')),
                    SizedBox(width: 20.0,),
                    Expanded(child: Image.asset('assets/images/dice$rightDice.png')),
                  ],
                ),
              ),
              ElevatedButton(onPressed: (){
                setState(() {
                  leftDice = Random().nextInt(6)+1;
                  rightDice = Random().nextInt(6)+1;
                });
              },
                child: Icon(Icons.play_arrow),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.amber)
                ),
              ),
            ],
          )
      ),
    );
  }
}