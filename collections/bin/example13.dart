void main(List<String> args) {
  // final string = 'abracadabra';
  // var result = '';
  // for (var char in string.split('')) {
  //   if (char == 'a' || char == 'b' || char == 'c') {
  //   } else {
  //     result += char;
  //   }
  // }
  // print(result);

  final string = 'abracadabra';
  var result = {
    for (final char in string.split('')) 'abc'.contains(char) ? null : char
  }
    ..removeAll([null])
    ..cast<String>();
  print(result);

  print('--------------------------------');

  final allNumbers = Iterable.generate(100);
  final evenNumbers = [
    for (final number in allNumbers)
      if (number % 2 == 0) number
  ];
  final evenNumbersFunctional = allNumbers.where(
    (number) => number % 2 == 0,
  );
  final oddNumbers = [
    for (final number in allNumbers)
      if (number % 2 != 0) number
  ];
  final oddNumbersFunctional = allNumbers.where(
    (number) => number % 2 != 0,
  );

  print('\n');
  print(allNumbers);
  print('\n');
  print(evenNumbers);
  print('\n');
  print(evenNumbersFunctional);
  print('\n');
  print(oddNumbers);
  print('\n');
  print(oddNumbersFunctional);
  print('\n');

  print('--------------------------------');

  final names = [
    'hamza',
    'medo',
    'bader',
  ];
  final namesAndLenghts = {
    for (final name in names) name: name.length,
  };

  print(namesAndLenghts);
}
