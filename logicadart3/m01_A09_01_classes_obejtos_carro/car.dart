class Car {
  final String montadora;
  final String model;
  final String colour;
  final double motor;
  final String fuelType;

  Car({required this.montadora, required this.model, required this.colour, required this.motor, required this.fuelType}) {
    print('Montadora: $montadora');
    print('Modelo: $model');
    print('Cor: $colour');
    print('Motor: $motor');
    print('Combustível: $fuelType');
  }
}

