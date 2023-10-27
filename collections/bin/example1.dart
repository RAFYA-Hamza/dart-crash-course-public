void main(List<String> args) {
  const names = ['Foo', 'Bar', 'Baz', 'Qux'];

  for (var name in names) {
    print(name);
  }
  print("------------------------------------------");

  for (var name in names.reversed) {
    print(name);
  }

  print("------------------------------------------");

  if (names.contains('Bar')) {
    print('Bar is in the list');
  }

  print("------------------------------------------");

  for (var name in names.where((String name) => name.startsWith('B'))) {
    print(name);
  }

  print("------------------------------------------");
  names.sublist(1, 3).forEach(print);

  print("------------------------------------------");
  names.sublist(2, 3).forEach(print);

  print("------------------------------------------");

  final ages = [20, 50, 60];
  ages.add(65);
  ages.add(90);

  print(ages);

  print("------------------------------------------");

  const names1 = ['Foo', 'Bar', 'Baz', 'Qux'];
  const names2 = ['Foo', 'Bar', 'Baz', 'Qux'];

  if (names1 == names2) {
    print("names1 and names2 lists are equal");
  } else {
    print('names1 and names2 are not equal');
  }

  print("------------------------------------------");

  names.map((str) => str.toUpperCase()).forEach(print);
  names.map((str) => str.length).forEach(print);

  print("------------------------------------------");

  final numbers = [1, 2, 3];
  final sum = numbers.fold(
      0,
      (
        int previousValue,
        int thisValue,
      ) =>
          previousValue + thisValue);
  print(sum);

  print("------------------------------------------");

  final totalLength = names.fold(
    0,
    (
      totalLength,
      str,
    ) =>
        totalLength + str.length,
  );
  print(totalLength);

  print("------------------------------------------");

  final result = names.fold(
    '',
    (
      result,
      str,
    ) =>
        '$result ${str.toUpperCase()}',
  );
  print(result);
}

// called function
// names.where(stringStartsWithLetterB);

// bool stringStartsWithLetterB(String value) {
//   return value.startsWith('B');
// }

// bool stringStartsWithLetterB(String value) => value.startsWith('B');

