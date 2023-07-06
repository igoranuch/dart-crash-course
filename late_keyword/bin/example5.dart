void main(List<String> args) {
  final person = Person();
  person.description = 'desc1';
  print(person.description);
  person.description = 'desc2';
  print(person.description);

  final dog = Dog();
  dog.description = 'desc1';
  print(dog.description);

  try {
    dog.description = 'desc2';
    print(dog.description);
  } catch (e) {
    print(e);
  }
}

class Person {
  late String description;
}

class Dog {
  late final String description;
}
