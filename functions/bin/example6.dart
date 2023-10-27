void main(List<String> args) {
  // Invalide code
  // doSomethingWith();

  /// Invalide code, 
  /// but if we are add an optional (?) to our string 
  /// in this case we can passed a null value
  /// doSomethingWith(name: null);

  doSomethingWith(name: 'foo'); 
}

void doSomethingWith({
  required String name,
}) {
  print(name);
}
