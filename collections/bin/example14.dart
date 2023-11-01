import 'package:collection/collection.dart';

void main(List<String> args) {
  testBoolList();

  print('--------------------------');
  testCombineIterableView();
  print('--------------------------');
  testCombinedListView();
  print('--------------------------');
  testCombinedMapView();
  print('--------------------------');
  testMapMerging();
  print('--------------------------');
}

void testMapMerging() {
  const info1 = {
    'name': 'john',
    'age': 30,
    'height': 1.8,
  };

  const info2 = {
    'name': 'john',
    'age': 30,
    'height': 10,
    'weight': 80,
  };

  final merge = mergeMaps(
    info1,
    info2,
    value: (one, two) => one, // each key that be selected
  );
  print(merge);
}

void testCombinedMapView() {
  var map1 = {'a': 1, 'b': 1, 'c': 3};
  var map2 = {'a': 4, 'b': 5, 'd': 6};
  var map3 = {'c': 7, 'd': 8, 'e': 9};
  var combinedMap = CombinedMapView(
    [
      map1,
      map2,
      map3,
    ],
  );
  print(combinedMap);

  try {
    combinedMap['a'] = 10;
  } catch (e) {
    print(e);
  }
}

void testCombinedListView() {
  // combinedListView is a view of a list of lists, and is unmodifiable
  final swedisNames = ['Seven', 'Karl', 'Gustav'];
  final norwegianNames = ['Seven', 'Karl', 'Ole'];
  final frenchNames = ['Seven', 'Karl', 'Pierre'];
  final names = CombinedListView(
    [
      swedisNames,
      norwegianNames,
      frenchNames,
    ],
  );
  print(names);
  if (names.contains('Seven')) {
    print('Seven is in a list');
  }
  try {
    names.removeAt(0);
  } catch (e) {
    print(e);
  }
}

void testCombineIterableView() {
  final Iterable<int> one = [10, 20, 30];
  final two = [40, 50, 60];
  final Iterable<int> tree = [70, 80, 90];

  var combined = CombinedIterableView(
    [
      one,
      two,
      tree,
    ],
  );
  print(combined);
  two.add(50);
  print(combined);
  print(combined.length);
  print(combined.isEmpty);
}

void testBoolList() {
  final boolList = BoolList(
    10,
    growable: true,
  );
  print(boolList);

  boolList[3] = true;
  if (boolList[3]) {
    print('The boolean value at index 3 is true.');
  } else {
    print('The boolean value at index 3 is false.');
  }

  boolList.length *= 2;

  print(boolList);
}
