void main(List<String> args) {
  const name = "hamza";
  print(name);

  // invalide code
  // name = "rafya";

  final age = [1, 2, 3];
  print(age);
  age.removeAt(0);
  print(age);

  // in final we can change the data but we can't change the variable see the exampl in the next
  // invalide code
  // age = [1, 5];

  var adress = "hay el aouda";
  print(adress);
  adress = adress.replaceAll(adress, "laayoune");
  print(adress);

  /*---------------------------------------------------- */

  // constants can't be assigned to a non-constants value

  // invalide code
  // final width = 120;
  // const size = width;

  const size = 60;
  final width = size;

  /*---------------------------------------------------- */

  // const myConstList = [1, 2, 3];
  // myConstList.add(4);

  final myFinalList = [1, 2, 3];
  myFinalList.add(5);
  print(myFinalList);

  /*---------------------------------------------------- */

  late final yourValue = getValue();

  print("we are here.");
  print("we are here.");
  print(yourValue);

  /*---------------------------------------------------- */

  const List<int> someList = [1, 2, 3];
  print(someList);

  const Map<String, String> someMap = {'foo': 'bar'};
  print(someMap['foo']);

  const Set<int> someSet = {1, 2, 3};
  print(someSet);

  const dynamic someNull = null;
  print(someNull);

  const Symbol someSymbole = #someSymbole;
  print(someSymbole);
}

int getValue() {
  print("getValue called.");
  return 10;
}
