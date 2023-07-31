import 'package:collection/collection.dart';

void main(List<String> args) {
  final names = {
    'Foo',
    'Bar',
    'Baz',
    'Qux',
  };
  names.add("Foo");
  print(names);
  print('-----------------------------');

  final names2 = [
    'Foo',
    'Bar',
    'Baz',
    'Foo',
  ];

  final uniqueNames = {...names2};
  print(names2);
  print(uniqueNames);
  print('-----------------------------');

  final foo1 = 'Foo';
  var foo2 = 'Foo';
  print(foo1.hashCode);
  print(foo2.hashCode);
  print('-----------------------------');

  if (names.contains('Foo')) {
    print("Found foo");
  } else {
    print("Didnt found foo");
  }
  print('-----------------------------');

  final ages1 = {20, 30, 40};
  final ages2 = {30, 20, 40};

  if (ages1 == ages2) {
    print("Equal");
  } else {
    print('Not equal');
  }
  print('-----------------------------');

  final ages3 = {40, 20, 30};
  if (SetEquality().equals(ages1, ages3)) {
    print("Equal");
  } else {
    print("Not equal");
  }
  print('-----------------------------');
}
