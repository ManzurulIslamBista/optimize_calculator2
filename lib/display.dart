import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:optimize_calculator/providor_calculator.dart';
import 'package:provider/provider.dart';

class Display extends StatefulWidget {
  const Display({super.key});

  @override
  State<Display> createState() => _DisplayState();
}

class _DisplayState extends State<Display> {
  @override
  Widget build(BuildContext context) {
    print("Test Display");
    return Container(

      margin: EdgeInsets.all(20),
      height: 150,
      width: MediaQuery.of(context).size.width-50,
      color: Colors.blueGrey,
      child: Align(
        alignment: Alignment.bottomRight,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            context.watch<ProvidorCalculator>().calText,
            style: TextStyle(fontSize: 45),
          ),
        ),
      ),
    );
  }
}
