import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:optimize_calculator/calculator_key.dart';
import 'package:optimize_calculator/providor_calculator.dart';
import 'package:provider/provider.dart';

class KeyPad extends StatefulWidget {
  const KeyPad({super.key});

  @override
  State<KeyPad> createState() => _KeyPadState();
}

class _KeyPadState extends State<KeyPad> {
  @override
  Widget build(BuildContext context) {
    print("Test KeyPad");
    return Column(
      children: [
        SizedBox(
          height: 80,
        ),

        //-------First Row-----------//
        Row(
          children: [
            CalculatorKey(val: "1",),
            CalculatorKey(val: "2",),
            CalculatorKey(val: "3",),
            CalculatorKey(val: "AC",),
          ],
        ),
        SizedBox(
          height: 5,
        ),

        //-------Second Row-----------//
        Row(
          children: [
            CalculatorKey(val: "4",),
            CalculatorKey(val: "5",),
            CalculatorKey(val: "6",),
            CalculatorKey(val: "+",),
          ],
        ),
        SizedBox(
          height: 5,
        ),

        //-------4rd Row-----------//
        Row(
          children: [
            CalculatorKey(val: "7"),
            CalculatorKey(val: "8"),
            CalculatorKey(val: "9"),
            CalculatorKey(val: "-"),
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Row(
          children: [
            CalculatorKey(val: "X"),
            CalculatorKey(val: "0"),
            CalculatorKey(val: "/"),
            CalculatorKey(val: "="),
          ],
        ),
        SizedBox(
          height: 5,
        ),
      ],
    );
  }
}
