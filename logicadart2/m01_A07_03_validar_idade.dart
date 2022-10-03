void main() {
  final name = 'Miguel';
  final age = calcAge(year: 2003, month: 2, day: 1);

  if (age >= 18) {
    print('Nome: $name');
    print('Idade: $age');
    print('Pode dirigir!');
  } else {
    print('Nome: $name');
    print('Idade: $age');
    print('Não pode dirigir!');
  }
}

int calcAge({required int year, required int month, required int day}) {
  var dateNow = DateTime.now();

  if (dateNow.year > year) {
    if (dateNow.month > month) {
      return dateNow.year - year;
    } else if (dateNow.month < month) {
      return dateNow.year - 1 - year;
    } else {
      if (dateNow.day > day) {
        return dateNow.year - year;
      } else {
        return dateNow.year - 1 - year;
      }
    }
  } else {
    return 0;
  }
}
