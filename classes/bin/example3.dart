void main(List<String> args) {
  final v = Vehicle(4);
  print(v);

  print('-----------------------------');
  final car = Car(4);
  print(car);

  print('-----------------------------');
  final bicycle = Bicycle();
  print(bicycle);
}

class Vehicle {
  final int wheelCount;
  const Vehicle(
    this.wheelCount,
  );

  @override
  String toString() {
    // if (runtimeType == Vehicle) {
    //   return 'Vehicle with $wheelCount wheels';
    // } else {
    //   return super.toString();
    // }
    return '$runtimeType with $wheelCount wheels';
  }
}

class Car extends Vehicle {
  // const Car() : super(4); // in this declaration we are fixed the wheelCount bu default equal to 4
  const Car(super.wheelCount);
}

class Bicycle extends Vehicle {
  const Bicycle() : super(2);
}
