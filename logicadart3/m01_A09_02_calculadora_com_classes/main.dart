import 'calculator.dart';
import 'tela.dart';
// import 'tela.dart';

void main() {
  final Calculator calculator = Calculator(10, 10);
  final Tela tela = Tela(calculator);
  tela.imprimir('multiplicação');
}
