void main(List<String> args) {
  describePerson();
  describePerson(name: "Foo");
  describePerson(age: 20);
  describePerson(age: 20, name: "Foo");
  describePerson(name: "Foo", age: 20);
}

void describePerson({
  String? name,
  int? age,
}) {
  print("You are $name and you are $age years old");
}
