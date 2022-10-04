import 'Funcionarios.dart';

class Gerente extends Funcionario {
  Gerente(super.mat, super.firstName, super.lastName, super.wage,
      super.workedHours);
  var salarioGerente;
  var comissao;

  gerenteCalc() {
   comissao = (hourPrice * 1.5) * extraCalc();
    salarioGerente = (comissao + wage) * 1.35;
    print('Matrícula: $mat');
    print('Nome: $firstName $lastName');
    print('Horas trabalhadas no mês: $workedHours');
    print('Salário: R\$ ${salarioGerente.toStringAsFixed(2)}');
  }
}
