import 'package:test/test.dart';

void main(List<String> args) {
  final person = Person();

  person.description = "Description 1";
  print(person.description);
  
  person.description = "Description 1";
  print(person.description);

  final woof = Dog();

  woof.description = "Description 1";
  print(woof.description);

  woof.description = "Description 2";
  try {
    print(woof.description);
  } catch (e) {
    print(e);
  }
}

class Person {
  late String description;
}

class Dog {
  late final String description;
}
