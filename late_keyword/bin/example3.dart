void main(List<String> args) {
  final person = Person();
  print(person.description);
  print(person.age);
}

class Person {
  late String description = heavyCalculationOfDescription();
  final int age;

  Person({this.age = 18}) {
    print("Constructor is called ");
  }

  String heavyCalculationOfDescription() {
    print("Function is  called");
    return "Foo Bar";
  }
}
