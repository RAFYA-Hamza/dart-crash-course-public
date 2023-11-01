void main(List<String> args) {
  for (var element in getName()) {
    print(element);
  }
}

Iterable<String> getName() sync* {
  print('Producing Bob');
  yield 'Bob';
  print('Producing Alice');
  yield 'Alice';
  print('Producing Joe');
  yield 'Joe';
  print('Producing template names');
  yield* templateNames();
}

Iterable<String> templateNames() sync* {
  print('Producing Foo');
  yield 'Foo';
  print('Producing Bar');
  yield 'Bar';
  print('Producing Baz');
  yield 'Baz';
}
