
void main() {
  print(recursivo(23));
}

 int recursivo(int n) {
  if (n <= 1) {
    return 1;
    
  }
   return n += recursivo(n - 1);
}
