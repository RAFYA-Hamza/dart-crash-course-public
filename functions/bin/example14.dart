void main(List<String> args) {
  final returnFunction = doSomething(10, 20);
  print(returnFunction());

  print(doSomething(10, 20)());
}

int Function() doSomething(
  int lhs,
  int rhs,
) =>
    () => lhs + rhs;
