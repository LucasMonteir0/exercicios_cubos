int fib(int n) {
  if (n <= 1) {
    return n;
  }
  return fib(n - 1) + fib(n - 2);
}

void main() {
  final fibo = 10;
  String saida = '';

  for (int i = 1; i <= fibo; i++) {
    saida += fib(i).toString() + " ";
  }
  print(saida);
}
