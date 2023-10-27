void main(List<String> args) {
  final person1 = Person(
    name: 'Foo',
    age: 10,
  );

  final person2 = person1;
  print(identical(person1, person2));

  final dog = Dog(
    name: 'Foo',
    age: 10,
  );


  print(person1.hashCode);
  print(person2.hashCode);
  print(dog.hashCode);

  final persons = {person1, person2, dog};
  print(persons);
}

class Person {
  final String name;
  final int age;

  Person({
    required this.name,
    required this.age,
  });

  @override
  String toString() => 'Person: $name, $age';

  @override
  int get hashCode => Object.hash(
        name,
        age,
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Person && name == other.name && age == other.age;
}

class Dog {
  final String name;
  final int age;

  Dog({
    required this.name,
    required this.age,
  });

  @override
  String toString() => 'Dog: $name, $age';

  @override
  int get hashCode => Object.hash(
        name,
        age,
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Dog && name == other.name && age == other.age;
}
