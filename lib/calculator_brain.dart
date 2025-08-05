import 'dart:math';

class calculatorBrain {
  final int height;
  final int weight;
  calculatorBrain({required this.height, required this.weight});
  late double _bmi;
  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi > 25) {
      return 'OVERWEIGHT';
    } else if (_bmi > 18.5) {
      return 'HEALTHY';
    } else
      return 'UNDERWEIGHT';
  }

  String getDetail() {
    if (_bmi > 25) {
      return 'You have higher than normal body weight. Try to exercise more';
    } else if (_bmi > 18.5) {
      return 'You have a normal body weight. Good job!';
    } else
      return 'You have lower than normal body weight. You can eat a bit more';
  }
}
