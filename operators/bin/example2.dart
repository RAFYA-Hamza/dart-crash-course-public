void main(List<String> args) {
  /// 4 types of operators
  /// unary prefix, unary posfix, binary infix, compound assignment

  int age = 30;
  print(--age); // unary prefix
  print(!true);
  print(!false);
  print(++age);
  // unary bitwise completement prefix operator
  print(~1);
  /// (0000 0000)(0000 0000)(0000 0000)(0000 0001)
  /// (1111 1111)(1111 1111)(1111 1111)(1111 1110)
  
}
