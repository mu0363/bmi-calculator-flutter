import 'dart:math';

class Calculator {
  final int height;
  final int weight;
  double _bmi = 20;

  Calculator({
    required this.height,
    required this.weight,
  });

  double calculateBMI() {
    double _bmi = weight / pow(height / 100, 2);
    return _bmi;
  }

  String getResult() {
    double bmiResult = calculateBMI();
    if (bmiResult >= 25) {
      return "Over weight";
    } else if (bmiResult > 18.5) {
      return "Normal";
    } else {
      return "Under weight";
    }
  }

  String getInterpretation() {
    double bmiResult = calculateBMI();
    if (bmiResult >= 25) {
      return "You have a higher than normal body weight. Try to exercise more.";
    } else if (bmiResult > 18.5) {
      return "You have a normal body weight. Good job!";
    } else {
      return "You have a lower than normal body weight. You can eat a bit more.";
    }
  }
}
