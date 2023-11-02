void main(List<String> args) {

  print(Car.carsInstantieted);
  Car(name: 'My car');

  print(Car.carsInstantieted);
  Car(name: 'My car');

  print(Car.carsInstantieted);
  Car(name: 'My car');

}

class Car {

  static int _carsInstantiated = 0;

  static int get carsInstantieted => _carsInstantiated;

  static void _incrementCarsInstatiated() => _carsInstantiated++;

  final String name;

  Car({
    required this.name,
  }) {
    _incrementCarsInstatiated();
  }

}
