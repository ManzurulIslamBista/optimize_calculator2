import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:optimize_calculator/calculator_key.dart';
import 'package:provider/provider.dart';

class KeyPad extends StatefulWidget {
  const KeyPad({super.key});

  @override
  State<KeyPad> createState() => _KeyPadState();
}

class _KeyPadState extends State<KeyPad> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 80,
        ),

        //-------First Row-----------//
        Row(
          children: [
            GestureDetector(
              onTap: () {
                context.read<CalculatorKey>().giveInput("1");
              },
              child: Container(
                height: 70,
                width: MediaQuery.of(context).size.width / 4,
                decoration: BoxDecoration(
                  color: Colors.cyan,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Center(
                  child: Text(
                    "1",
                    style: TextStyle(fontSize: 45),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                context.read<CalculatorKey>().giveInput("2");
              },
              child: Container(
                height: 70,
                width: MediaQuery.of(context).size.width / 4,
                decoration: BoxDecoration(
                  color: Colors.cyan,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Center(
                  child: Text(
                    "2",
                    style: TextStyle(fontSize: 45),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                context.read<CalculatorKey>().giveInput("3");
              },
              child: Container(
                height: 70,
                width: MediaQuery.of(context).size.width / 4,
                decoration: BoxDecoration(
                  color: Colors.cyan,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Center(
                  child: Text(
                    "3",
                    style: TextStyle(fontSize: 45),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                context.read<CalculatorKey>().giveInput("ac");
              },
              child: Container(
                height: 70,
                width: MediaQuery.of(context).size.width / 4,
                decoration: BoxDecoration(
                  color: Colors.cyan,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Center(
                  child: Text(
                    "AC",
                    style: TextStyle(fontSize: 45),
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 5,
        ),

        //-------Second Row-----------//
        Row(
          children: [
            GestureDetector(
              onTap: () {context.read<CalculatorKey>().giveInput("4");},
              child: Container(
                height: 70,
                width: MediaQuery.of(context).size.width / 4,
                decoration: BoxDecoration(
                  color: Colors.cyan,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Center(
                  child: Text(
                    "4",
                    style: TextStyle(fontSize: 45),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                context.read<CalculatorKey>().giveInput("5");
              },
              child: Container(
                height: 70,
                width: MediaQuery.of(context).size.width / 4,
                decoration: BoxDecoration(
                  color: Colors.cyan,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Center(
                  child: Text(
                    "5",
                    style: TextStyle(fontSize: 45),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                context.read<CalculatorKey>().giveInput("6");
              },
              child: Container(
                height: 70,
                width: MediaQuery.of(context).size.width / 4,
                decoration: BoxDecoration(
                  color: Colors.cyan,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Center(
                  child: Text(
                    "6",
                    style: TextStyle(fontSize: 45),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                context.read<CalculatorKey>().giveInput("+");
              },
              child: Container(
                height: 70,
                width: MediaQuery.of(context).size.width / 4,
                decoration: BoxDecoration(
                  color: Colors.cyan,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Center(
                  child: Text(
                    "+",
                    style: TextStyle(fontSize: 45),
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 5,
        ),

        //-------4rd Row-----------//
        Row(
          children: [
            GestureDetector(
              onTap: () {context.read<CalculatorKey>().giveInput("7");

              },
              child: Container(
                height: 70,
                width: MediaQuery.of(context).size.width / 4,
                decoration: BoxDecoration(
                  color: Colors.cyan,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Center(
                  child: Text(
                    "7",
                    style: TextStyle(fontSize: 45),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                context.read<CalculatorKey>().giveInput("8");
              },
              child: Container(
                height: 70,
                width: MediaQuery.of(context).size.width / 4,
                decoration: BoxDecoration(
                  color: Colors.cyan,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Center(
                  child: Text(
                    "8",
                    style: TextStyle(fontSize: 45),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                context.read<CalculatorKey>().giveInput("9");
              },
              child: Container(
                height: 70,
                width: MediaQuery.of(context).size.width / 4,
                decoration: BoxDecoration(
                  color: Colors.cyan,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Center(
                  child: Text(
                    "9",
                    style: TextStyle(fontSize: 45),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                context.read<CalculatorKey>().giveInput("-");
              },
              child: Container(
                height: 70,
                width: MediaQuery.of(context).size.width / 4,
                decoration: BoxDecoration(
                  color: Colors.cyan,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Center(
                  child: Text(
                    "-",
                    style: TextStyle(fontSize: 45),
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Row(
          children: [
            GestureDetector(
              onTap: () {
                context.read<CalculatorKey>().giveInput("*");
              },
              child: Container(
                height: 70,
                width: MediaQuery.of(context).size.width / 4,
                decoration: BoxDecoration(
                  color: Colors.cyan,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Center(
                  child: Text(
                    "X",
                    style: TextStyle(fontSize: 45),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                context.read<CalculatorKey>().giveInput("0");
              },
              child: Container(
                height: 70,
                width: MediaQuery.of(context).size.width / 4,
                decoration: BoxDecoration(
                  color: Colors.cyan,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Center(
                  child: Text(
                    "0",
                    style: TextStyle(fontSize: 45),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                context.read<CalculatorKey>().giveInput("/");
              },
              child: Container(
                height: 70,
                width: MediaQuery.of(context).size.width / 4,
                decoration: BoxDecoration(
                  color: Colors.cyan,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Center(
                  child: Text(
                    "/",
                    style: TextStyle(fontSize: 45),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                context.read<CalculatorKey>().giveInput("=");
              },
              child: Container(
                height: 70,
                width: MediaQuery.of(context).size.width / 4,
                decoration: BoxDecoration(
                  color: Colors.cyan,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Center(
                  child: Text(
                    "=",
                    style: TextStyle(fontSize: 45),
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 5,
        ),
      ],
    );
  }
}
