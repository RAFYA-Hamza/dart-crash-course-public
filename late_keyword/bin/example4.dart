void main(List<String> args) {
  final person = Person();

  print(person.fullName);
  print(person.firstName);
  print(person.lastName);
}

class Person {
  late String fullName = _getFullName();
  late String firstName = _getFullName().split(' ').first;
  late String lastName = _getFullName().split(' ').last;

  String _getFullName() {
    print("_getFullName() is called");
    return "RAFYA Hamza";
  }
}
