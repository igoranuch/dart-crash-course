void main(List<String> args) {
  doSomethingWithAge(age: 42);
  doSomethingWithAge(age: null);
}

void doSomethingWithAge({required int? age}) {
  if (age != null) {
    final in2Years = age + 2;
    print('$in2Years');
  } else {
    'You did not tell age';
  }
}
