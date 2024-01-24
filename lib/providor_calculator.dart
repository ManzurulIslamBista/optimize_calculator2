import 'package:flutter/cupertino.dart';

class ProvidorCalculator extends ChangeNotifier {
  var calText = "CASIO";
  bool isStarting = true;
  String evaluateExpression(String expression) {
    try {
      List<String> parts = expression
          .split(RegExp(r'(\+|\-|\*|\/|\%)'))
          .where((e) => e.isNotEmpty)
          .toList();
      List<String> operators = expression
          .split(RegExp(r'[0-9.]+'))
          .where((e) => e.isNotEmpty)
          .toList();

      // print(parts);
      // print(operators);

      if (parts.length >= 2 && parts.length == operators.length + 1) {
        double result = double.parse(parts[0]);

        for (int i = 0; i < operators.length; i++) {
          double operand = double.parse(parts[i + 1]);
          String op = operators[i];

          switch (op) {
            case '+':
              result += operand;
              break;
            case '-':
              result -= operand;
              break;
            case '*':
              result *= operand;
              break;
            case '/':
              result /= operand;
              break;
              break;
            default:
              return "Error";
          }
        }

        return result.toString();
      } else {
        return "Error";
      }
    } catch (e) {
      return "Error";
    }
  }

  void giveInput(String value) {
   // print(calText);
    if (value == 'AC')
      calText= '';
    if (calText.length < 16) {
      if (value == "=") {
        calText = evaluateExpression(calText);
        isStarting = true;
      }
      else if (value == 'AC')
        calText= '';
      else {
        if (isStarting == true) {
          calText = '';
          isStarting = false;
        }
        calText += value;
      }
    }
    notifyListeners();
  }
}
