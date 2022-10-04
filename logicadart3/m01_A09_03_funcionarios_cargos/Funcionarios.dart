abstract class Funcionario {
  int mat;
  String firstName;
  String lastName;
  int wage;
  double hourPrice = 1212 / 220;
  int workedHours;

  Funcionario(this.mat, this.firstName, this.lastName, this.wage, this.workedHours);

  // Calcular hora Extra
  extraCalc() {
    if (workedHours > 220) {
      return workedHours - 220;
    }
  }
}

