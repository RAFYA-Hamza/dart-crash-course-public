void main(List<String> args) {
  final rafyaHamza = Person(name: 'RAFYA Hamza');
  final medoRafya = Person(name: 'RAFYA Hamza');
  final rafyaFamily = WrongImplementationOfFamily(memebrs: [
    rafyaHamza,
    medoRafya,
  ]);
  print(rafyaFamily);
  print(rafyaFamily.memebrsCount);

  print('---------------------------------------');

  final rafyaHamza1 = Person(name: 'RAFYA Hamza');
  final medoRafya1 = Person(name: 'RAFYA Hamza');
  final rafyaFamily1 = RightImplementationOfFamily(memebrs: [
    rafyaHamza1,
    medoRafya1,
  ]);
  print(rafyaFamily1);
  print(rafyaFamily1.memebrsCount);
}

class Person {
  final String name;
  Person({
    required this.name,
  });
}

class WrongImplementationOfFamily {
  final Iterable<Person> memebrs;
  late int memebrsCount;

  WrongImplementationOfFamily({required this.memebrs}) {
    memebrsCount = getMembersCount();
  }

  int getMembersCount() {
    print('Getting membrs count');
    return memebrs.length;
  }
}

class RightImplementationOfFamily {
  final Iterable<Person> memebrs;
  late int memebrsCount = getMembersCount();

  RightImplementationOfFamily({required this.memebrs});

  int getMembersCount() {
    print('Getting membrs count');
    return memebrs.length;
  }
}
