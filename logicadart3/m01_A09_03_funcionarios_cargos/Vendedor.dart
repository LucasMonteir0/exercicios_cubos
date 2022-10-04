import 'Funcionarios.dart';

class Vendedor extends Funcionario {
  Vendedor(super.mat, super.firstName, super.lastName, super.wage,
      super.workedHours);
  var salarioVendedor;
  var comissao;

  vendedorCalc() {
    comissao = (hourPrice * 1.5) * extraCalc();
    salarioVendedor = (comissao + wage) * 1.20;
    print('Matrícula: $mat');
    print('Nome: $firstName $lastName');
    print('Horas trabalhadas no mês: $workedHours');
    print('Salário: R\$ ${salarioVendedor.toStringAsFixed(2)}');
    print('');
  }
}
