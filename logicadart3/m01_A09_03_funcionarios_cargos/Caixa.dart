import 'Funcionarios.dart';

class Caixa extends Funcionario {
  Caixa(super.mat, super.firstName, super.lastName, super.wage,
      super.workedHours);
  var salarioCaixa;
  var comissao;

  caixaCalc() {
    comissao = (hourPrice * 1.5) * extraCalc();
    salarioCaixa = (comissao + wage);
    print('Matrícula: $mat');
    print('Nome: $firstName $lastName');
    print('Horas trabalhadas no mês: $workedHours');
    print('Salário: R\$ ${salarioCaixa.toStringAsFixed(2)}');
    print('');
  }
}
