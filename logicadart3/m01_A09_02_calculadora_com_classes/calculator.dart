class Calculator {
  final num1;
  final num2;

  Calculator(this.num1, this.num2);

  int soma() => num1 + num2;
  int sub() => num1 - num2;
  int mult() => num1 * num2;
  int div() => num1 / num2;
}
