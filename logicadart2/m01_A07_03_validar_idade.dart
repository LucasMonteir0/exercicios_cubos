void main() {
  final name = 'Cristiano';
  int day = 2;
  int mounth = 10;
  int year = 1998;

  myFunction(day, mounth, year);
}

myFunction(int day, int mounth, int year) {
  if (year + 18 < 2022) {
    if (mounth <= 9) {
      if (day <= 28) {
        print('ok');
      }
    }
  }
}
