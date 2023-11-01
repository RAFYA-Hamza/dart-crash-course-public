import 'dart:collection';

void main(List<String> args) {
  final info = {
    'name': 'John',
    'age': 30,
    'adress': {
      'street': 'Main Street',
      'city': 'New York',
    },
  };
  final info2 = UnmodifiableMapView(info);

  info.addAll(
    {
      'phone': '123-456-7889',
    },
  );

  print(info);

  try {
    info2.addAll(
      {
        'phone': '123-456-7889',
      },
    );
  } catch (e) {
    print(e);
  }
}
