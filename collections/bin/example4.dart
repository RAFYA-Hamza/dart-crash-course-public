void main(List<String> args) {
  final infos = {
    'name': 'Foo',
    'age': 24,
  };

  print(infos);
  print(infos['name']);
  print(infos['age']);

  print('--------------------');

  print(infos.keys);
  print(infos.values);

  print('--------------------');

  infos.putIfAbsent('height', () => 180);
  print(infos);

  print('--------------------');

  infos['height'] = 190;
  print(infos);

  print('--------------------');

  for (var entry in infos.entries) {
    print(entry.key);
    print(entry.value);
  }
  print('--------------------');

  if (infos.containsKey('height')) {
    print('Height is ${infos['height']}');
  } else {
    print('Height is not found');
  }

  print('--------------------');

  final mapWithIntKeys = {
    10: 30,
    20: 40,
  };

  print(mapWithIntKeys);
  print(mapWithIntKeys[10]);
  
  print('--------------------');
}
