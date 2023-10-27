void main(List<String> args) {
  doSomethingWith();
  // we can't assing the null value to not optional arguments
  // doSomethingWith(name: null);  
  doSomethingWith(name: 'Foo');
}

void doSomethingWith({
  String name = 'Bar',
}) {
  print('Hello, $name');
}
