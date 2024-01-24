import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:optimize_calculator/providor_calculator.dart';
import 'package:provider/provider.dart';

class CalculatorKey extends StatefulWidget {
  String val;
  CalculatorKey({super.key,required this.val});

  @override
  State<CalculatorKey> createState() => _CalculatorKeyState();
}

class _CalculatorKeyState extends State<CalculatorKey> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<ProvidorCalculator>().giveInput(widget.val);
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
            widget.val,
            style: TextStyle(fontSize: 45),
          ),
        ),
      ),
    );
  }
}
