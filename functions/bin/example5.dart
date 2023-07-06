void main(List<String> args) {
  sayHelloTo();
  sayHelloTo(name: "Hello");
  sayHelloTo(name: null);
}

void sayHelloTo({String? name}) {
  print("Hello $name!");
}
