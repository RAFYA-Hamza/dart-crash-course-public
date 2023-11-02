void main(List<String> args) {
  final hamza = Person(
    firstName: 'Hamza',
    lastName: 'RAFYA',
  );

  print(hamza.fullName);

}

class Person {
  final String firstName;
  final String lastName;
  String get fullName => '$firstName $lastName';

  const Person({
    required this.firstName,
    required this.lastName,
  });
}

// class Person {
//   final String firstName;
//   final String lastName;
//   final String fullName;

//   const Person({
//     required this.firstName,
//     required this.lastName,
//     required this.fullName,
//   });
// }
