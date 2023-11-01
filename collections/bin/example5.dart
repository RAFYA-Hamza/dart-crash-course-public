void main(List<String> args) {
  final iterable = Iterable.generate(
    20,
    (index) => getName(index),
  );

  for (var element in iterable.take(2)) {
    print(element);
  }
}

String getName(int i) {
  print('Get name got called');
  return 'John #$i';
}
