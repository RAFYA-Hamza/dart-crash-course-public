import 'dart:collection';

void main(List<String> args) {
  final foo = Person(
    name: 'Foo',
    siblings: [
      Person(
        name: 'Bar',
      ),
    ],
  );

  try {
    foo.sibligns?.add(
      Person(
        name: 'Bar',
      ),
    );
  } catch (e) {
    print(e);
  }
  
}

class Person {
  final String name;
  final List<Person>? _siblings;

  UnmodifiableListView<Person>? get sibligns =>
      _siblings == null ? null : UnmodifiableListView(_siblings!);

  Person({
    required this.name,
    List<Person>? siblings,
  }) : _siblings = siblings;
}
