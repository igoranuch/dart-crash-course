void main(List<String> args) {
  /// 4 types of operators
  /// unary prefix, unary postfix, binary infix, compound assignment

  int age = 30;
  print(--age);
  print(!true);
  print(!false);
  print(++age);

  // unary bitwise complement prefix operator
  print(~1);

  // negation operator
  print(-age);
  print(-(-age));
}
