import 'dart:math';

void main() {
  final list = [3, 5, 10, 2, 5, 1, 2, 3, 6, 12, 15, 22, 8, 4, 13, 25];
  // int maior = list[0];
  // int menor = list.first;
  // int sum = 0;
  // int even = 0;
  // int odd = 0;

  // for (final element in list) {
  //   sum += element;
  //   if (element > maior) {
  //     maior = element;
  //   }
  //   if (element < menor) {
  //     menor = element;
  //   }
  //   if (element % 2 == 0) {
  //     even++;
  //   } else {
  //     odd++;
  //   }
  // }
  // final avg = sum / list.length;
  // print(
  //     'Maior: $maior, Menor: $menor, Média: $avg, Ímpares: $odd, Pares: $even');

  //* BONUS

  list.sort();
  final min = list.first;
  final max = list.last;
  final avg = list.reduce((value, element) => value + element) / list.length;
  final even = list.where((element) => element % 2 == 0).length;
  final odd = list.length - even;

   print('Maior: $max, Menor: $min, Média: $avg, Ímpares: $odd, Pares: $even');
}
