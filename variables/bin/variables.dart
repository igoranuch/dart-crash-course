void main(List<String> args) {
  const int someInteger = 10;
  print(someInteger);
  const double someDouble = 10.5;
  print(someDouble);
  const String someString = 'Hello World';
  print(someString);
  const bool someBool = true;
  print(!someBool);
  const List<int> someList = [1, 2, 3, 4, 5, 6, 7, 8];
  print(someList);
  const Map<String, String> someMap = {'foo': 'bar'};
  print(someMap['foo']);
  const Set<int> someSet = {1, 2, 3};
  print(someSet.length);
  const dynamic someNull = null;
  print(someNull);
  const Symbol someSymbol = #someNull;
  print(someSymbol);
}
