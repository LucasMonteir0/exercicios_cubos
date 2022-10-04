import 'Gerente.dart';
import 'Vendedor.dart';
import 'Caixa.dart';

void main() {
  final caixa = Caixa(1579, 'Ana', 'Oliveira', 1212, 230);
  final vendedor = Vendedor(1601, 'João', 'Silva', 1212, 230);
  final gerente = Gerente(1603, 'Maria', 'Souza', 1212, 230);

  caixa.caixaCalc();
  vendedor.vendedorCalc();
  gerente.gerenteCalc();
}
