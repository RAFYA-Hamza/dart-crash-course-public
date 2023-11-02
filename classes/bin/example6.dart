void main(List<String> args) {
  final myCar = Car();
  try {
    myCar.drive(speed: 10);
    myCar.drive(speed: -1);
  } catch (e) {
    print(e);
  }
}

class Car {
  int _speed = 0;

  int get getSpeed => _speed;
  set setSpeed(int newSpeed) {
    if (newSpeed < 0) {
      throw Exception('The can not be a negative!');
    } else {
      _speed = newSpeed;
    }
  }

  void drive({
    required int speed,
  }) {
    this.setSpeed = speed;
    print('Accelerating to ${_speed} km/h');
  }

  void stop() {
    this.setSpeed = 0;
    print('Stopping...');
    print('Stopped');
  }
}
