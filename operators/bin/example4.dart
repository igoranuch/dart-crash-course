void main(List<String> args) {
  // binary infix operators
  const age = 50;
  print(age + 20);
  print(age - 20);
  print(age * 20);
  print(age / 20);

  print(age ~/ 20);
  print(age % 20); // remainder

  print(age == 20);
  print(age != 20);

  print(age > 20);
  print(age < 20);
  print(age >= 20);
  print(age <= 20);

  // bitwise infix ops
  print(age & 20);
  print(age | 20);
  print(age ^ 20);

  print(age << 20);
  print(age >> 20);
}
