void main(List<String> args) {
  // binary infix operators
  const age = 15;
  print(age + 20);
  print(age - 20);
  print(age * 20);
  print(age / 20);
  print(age ~/ 20);
  print(age % 20);
  print(age == 20);
  print(age != 20);

  print(age < 20);
  print(age <= 20);
  print(age > 20);
  print(age >= 20);

  print(age & 20); // bitwise AND 1 & 1 = 1, 1 & 0 = 0, 0 & 0 = 0, 0 & 1 = 0
  print(age | 20); // bitwise OR 1 | 1 = 1, 1 | 0 = 1, 0 | 0 = 0, 0 | 1 = 1
  print(age ^ 20); // bitwise XOR 1 ^ 1 = 0, 1 ^ 0 = 1, 0 ^ 0 = 0, 0 ^ 1 = 1
  print(age << 1); // bitwise left shift
  print(age >> 1); // bitwise right shift

  print(1 == 1 && 1 == 2); // logical AND
  print(1 == 1 && 1 == 1); // logical AND

  print(1 == 1 || 1 == 2); // logical OR
  print(1 == 1 || 1 == 1); // logical OR

  
}
