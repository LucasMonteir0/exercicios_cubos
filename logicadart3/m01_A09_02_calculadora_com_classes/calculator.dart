

abstract class Calculator {
  final int num1;
  final int num2;
  final String operator;
  

   Calculator(this.num1, this.num2, this.operator) {
    switch (operator) {
      case 'subtração':
       num1 - num2;
        break;
      case 'divisão':
       num1 / num2;
        break;
      case 'multiplicação':
        num1 * num2;
        break;
      default:
        num1 + num2;
        break;
    }
  }
}
