void main() {
  final list0 = List<int>.unmodifiable([0, 6, 8, 3, 1, 4]);
  final list1 = List.from(list0);

  if (list1.length > 5) {
    if (list1.first == 0 && list1.last == 10) {
      list1.removeRange(1, list1.length - 4);
    } else if (list1[3] == 3) {
      list1.first = 1;
      list1.last = 9;
      final end = list1.length - 1;
      final start = end - (list1.length - 5);
      list1.removeRange(start, end);
    } else {
      list1.removeLast();
      if (list1.length > 5) {
        list1.removeAt(0);
      }
      if (list1.length > 5) {
        list1.removeRange(0, list1.length - 5);
      }
    }
  } else {
    final tempList = List.filled(5 - list1.length, 2);
    list1.addAll(tempList);
    list1[1] = 8;
  }

  print(list1);

  final soma = list1[1] + list1[3];
  final div = list1[4] / list1[2];
  final mult = soma * div;

  print(mult > 15 ? 'Lista válida.' : 'Lista inválida.');
}
