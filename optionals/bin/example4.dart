void main(List<String> args) {
  String? lastName;
  lastName ??= 'Bar';
  print(lastName);
}

void doSomething(String? one, String? two) {
  one ??= two;
}
