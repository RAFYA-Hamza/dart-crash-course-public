import 'package:collection/collection.dart';

void main(List<String> args) {
  final names = {
    'Foo',
    'Bar',
    'Baz',
    'Qux',
  };

  names.add('Foo');
  print(names);

  print('------------------');
  final names2 = ['Foo', 'Bar', 'Baz', 'Foo'];
  // final uniqueNames = {names2};  output : {[Foo, Bar, Baz, Foo]}
  final uniqueNames = {
    ...names2
  }; // we are used the tree bracket to convert the list to set, not juste copy it.
  print(uniqueNames);

  print('------------------');
  final foo1 = 'Foo';
  var foo2 = 'Foo';

  print(foo1.hashCode);
  print(foo2.hashCode);

  print('------------------');
  if (names.contains('Foo')) {
    print('Found Foo');
  } else {
    print('Did not found Foo.');
  }

  print('------------------');
  final ages1 = {20, 30, 40};
  final ages2 = {20, 30, 40};

  if (ages1 == ages2) {
    print('Ages are equal');
  } else {
    print('Ages are not equal');
  }

  print('------------------');

  // this comparaison affected whatever the place each elements, the idea is if all elements equals or not
  if (SetEquality().equals(ages1, ages2)) {
    print('Ages are equal');
  } else {
    print('Ages are not equal');
  }

  print('------------------');
  final ages3 = {30, 40, 20};
  if (SetEquality().equals(ages1, ages3)) {
    print('Ages are equal');
  } else {
    print('Ages are not equal');
  }

  print('------------------');
}
