extension Calculator on double {
  double plus(double other) => this + other;
  double minus(double other) => this - other;
  double mult(double other) => this * other;
  double div(double other) => this / other;
}

double num1 = 5.3;
double num2 = 4.25;
String operator = 'adição';

void main() {
  message();
}

double myCalculate() {
  switch (operator) {
    case 'subtração':
      return num1.minus(num2);
    case 'divisão':
      return num1.div(num2);
    case 'multiplicação':
      return num1.mult(num2);
    default:
      return num1.plus(num2);
  }
}

void message() {
  final result = myCalculate().toStringAsFixed(2);
  print('Resultado de $num1 + $num2: $result');
}
