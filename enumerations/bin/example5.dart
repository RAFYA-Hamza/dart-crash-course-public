void main(List<String> args) {
  final vehicle = VehicleType.bicycle;

  switch (vehicle) {
    case VehicleType.car:
    case VehicleType.truck:
    case VehicleType.motorcycle:
      print('Most common personal vehicles');
      break;
    case VehicleType.bicycle:
      print('Usually used for work');
      break;
    default:
      print('Hello');
  }
}

enum VehicleType {
  car,
  truck,
  motorcycle,
  bicycle,
}
