void main(List<String> args) {
  List<String?>? names;
  names?.add("Foo");
  names?.add(null);
  names = null;
  print(names);

  final first = names?.first;
  print(first ?? 'No first name found');

  names = [];
  names.add('Baz');
  names.add(null);
  print(names);
}
