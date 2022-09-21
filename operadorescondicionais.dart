void main() {
  var booleano = false;

  if (booleano) {
    print('É Verdadeiro');
  } else {
    print('É Falso');
  }

  // if (booleano == false) {
  //   print('É Falso');
  // }

  var numero = 8;
  var resto = numero % 2;

  if (resto == 0) {
    print('É Par');
  } else {
    print('É Impar');
  }

  var salario = 7000;
  var junior = 1000;
  var pleno = 3000;
  var senior = 5000;

  if (salario <= junior){
    print('É dev junior');
  } else if (salario <= pleno) {   //usa else if caso haja alguma outra condição
    print('É dev pleno');
  } else {    //else é o contrário da condição if
    print('É dev senior');
  }
}
