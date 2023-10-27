void main(List<String> args) {
  describePerson();
  describePerson(age: 24);
  describePerson(name: 'Hamza');
  describePerson(age: 24, name: 'Hamza');
}

void describePerson({
  String? name,
  int? age,
}) {
  print('Hello $name, you rae $age years old.');
}
