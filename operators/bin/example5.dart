void main(List<String> args) {
  var myAge = 20;
  print(myAge = 30);
  print(myAge);

  print(myAge ~/= 2); // this is the same as myAge = myAge ~/ 2
  print(myAge);

  print(myAge *= 2); // this is the same as myAge = myAge * 2
  print(myAge);

  print(myAge &= 2); // this is the same as myAge = myAge & 2, bitwise AND
 
}
