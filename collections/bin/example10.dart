import 'dart:collection';

void main(List<String> args) {
  const notFound = 'NOT_FOUND';
  const defaultString = 'DEFAULT_VALUE';

  final myList = SafeList(
    defaultValue: defaultString,
    absentValue: notFound,
    values: ['Bar', 'Baz'],
  );

  print(myList[0]);
  print(myList[1]);
  print(myList[2]);

  myList.length = 4;
  print(myList[3]);
  print(myList);

  myList.length = 0;
  print(myList.first);
  print(myList.last);
}

class SafeList<T> extends ListBase {
  final List<T> _list;
  final T absentValue;
  final T defaultValue;

  SafeList({
    required this.defaultValue,
    required this.absentValue,
    List<T>? values,
  }) : _list = values ?? [];

  @override
  operator [](int index) => index < _list.length ? _list[index] : absentValue;

  @override
  void operator []=(int index, value) => _list[index] = value;

  @override
  int get length => _list.length;

  @override
  set length(int newLength) {
    if (newLength <= _list.length) {
      _list.length = newLength;
    } else {
      _list.addAll(
        List.filled(
          newLength - _list.length,
          defaultValue,
        ),
      );
    }
  }

  @override
  T get first => _list.isNotEmpty ? _list.first : absentValue;

  @override
  T get last => _list.isNotEmpty ? _list.last : absentValue;
}
