void main(List<String> args) {
  final foo = doSomething(10, 20);
  print(foo());
  print(doSomething(10, 20)());
}

int Function() doSomething(
  int lhs,
  int rhs,
) =>
    () => lhs + rhs;
