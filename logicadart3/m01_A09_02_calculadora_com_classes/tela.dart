import 'calculator.dart';

class Tela {
  final Calculator calculator;
  Tela(this.calculator);

  void imprimir(String operator) {
    switch (operator) {
      case 'subtração':
        print(calculator.sub());
        break;
      case 'divisão':
        print(calculator.div());
        break;
      case 'multiplicação':
        print(calculator.mult());
        break;
      default:
        print(calculator.soma());
        break;
    }
  }
}
