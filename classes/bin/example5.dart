void main(List<String> args) {
  final myCar = Car();

  myCar.drive(speed: 20);
  print('Speed is ${myCar.speed}');

  myCar.drive(speed: 40);
  print('Speed is ${myCar.speed}');

  myCar.stop();
}

class Car {
  int speed = 0;

  void drive({
    required int speed,
  }) {
    this.speed = speed;
    print('Accelerating to $speed km/h');
  }

  void stop() {
    speed = 0;
    print('Stopping....');
    print('Stopped');
  }
}
