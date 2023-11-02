void main(List<String> args) {
  const bob = Person('Bob', 20);

  print(bob.name);
  print(bob.age);

  print('------------------------------------------');
  const hamza = Person.hamza();
  print(hamza.name);
  print(hamza.age);

  print('------------------------------------------');
  const medo = Person.medo(19);
  print(medo.name);
  print(medo.age);

  print('------------------------------------------');
  const otherPerson = Person.other();
  print(otherPerson.name);
  print(otherPerson.age);
}

class Person {
  final String name;
  final int age;
  const Person(
    this.name,
    this.age,
  );

// default constructor
  const Person.hamza()
      : name = 'Hamza',
        age = 24;

// default constructor with a specific attributs
  const Person.medo(
    this.age,
  ) : name = 'Medo';

  const Person.other({
    String? name,
    int? age,
  })  : name = name ?? 'Baz',
        age = age ?? 30;
}
