import 'dart:math';

class Calculation {
  Calculation({this.height, this.weight});

  final int height;
  final double weight;

  double _bmi = 0.0;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25.0) {
      return 'Over Weight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Under Weight';
    }
  }

  String getFeedback() {
    if (_bmi >= 25.0) {
      return 'You Have A Higher BMI. Try To Exercise More.';
    } else if (_bmi > 18.5) {
      return 'You Have A Good And Normal BMI. Do Your Exercise Daily.';
    } else {
      return 'You Have A Lower BMI. Try To Exercise And Eat More .';
    }
  }
}
