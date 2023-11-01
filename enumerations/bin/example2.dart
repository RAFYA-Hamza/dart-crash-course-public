void main(List<String> args) {
  final hamza = Person(
    name: 'Hamza',
    car: Car.teslaModelY,
  );

  switch (hamza.car) {
    case Car.teslaModelX:
      print('hamza has a Tesla Model X = ${hamza.car}');
      break;

    case Car.teslaModelY:
      print('hamza has a Tesla Model Y = ${hamza.car}');
      break;
  }
}

class Person {
  final String name;
  final Car car;

  Person({
    required this.name,
    required this.car,
  });
}

enum Car {
  teslaModelX(
    manifacturer: 'Tesla',
    model: 'Model X',
    year: 2023,
  ),

  teslaModelY(
    manifacturer: 'Tesla',
    model: 'Model Y',
    year: 2022,
  );

  final String manifacturer;
  final String model;
  final int year;

  const Car({
    required this.manifacturer,
    required this.model,
    required this.year,
  });
}
