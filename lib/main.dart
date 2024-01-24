import 'package:flutter/material.dart';
import 'package:optimize_calculator/providor_calculator.dart';
import 'package:optimize_calculator/display.dart';

import 'package:optimize_calculator/key_pad.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (_) => ProvidorCalculator())
  ], child: const MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    print("Test MyApp");
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        appBar: AppBar(
          title: const Text("Calculator"),
          leading: const Icon(Icons.ad_units_outlined),
          backgroundColor: Colors.blue,
        ),
        body:Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child:
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Display(),
                    ],
                  ),
                  Row(
                    children: [
                      KeyPad(),
                    ],
                  )
                ],
              ),
        ) ,
      )


    );
  }
}
