// int fib(int n) {
//   if (n <= 1) {
//     return n;
//   }
//   return fib(n - 1) + fib(n - 2);
// }

void main() {
  final input = 150;
  fib(0, 0, 1, input);

  // for (int i = 1; i <= input; i++) {
  //   output += fib(i).toString() + ' ';
  // }
  print(result);
}

String result = '';

void fib(int valorAtual, int valorAnterior, int fibAtual, int valorInformado) {
  result += '$fibAtual ';
  valorAnterior = valorAtual;
  valorAtual = fibAtual;
  fibAtual = valorAnterior + valorAtual;
  if (fibAtual <= valorInformado) {
    fib(valorAtual, valorAnterior, fibAtual, valorInformado);
  }
}
