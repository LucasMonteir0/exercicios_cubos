void main() {
  final inputs = [14, 9, 17, 3,];
  final reversedList = List.from(inputs.reversed);


  // final mult = (inputs[0] * inputs[1]) + (inputs[2] * inputs[3]);
  // print(mult);

//* Para listas com length > 4
  final mult = (inputs[0] * inputs[1]) + (inputs.last * reversedList[1]);
  print(mult);
}
