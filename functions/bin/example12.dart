void main(List<String> args) {
  print(add());
  print(add(1, 2));
  print(add(3));
  print(add(3, 4));
}

int add([
  int a = 1,
  int b = 2,
]) {
  return a + b;
}
