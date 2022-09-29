import 'dart:math';

void main() {
  final num = 200;

  for (int i = 1; i < num; i++) {
    if (i % 2 != 0) {
      var calc = pow(i, 2);
      print('$i * $i == $calc');
    }
  }
}
