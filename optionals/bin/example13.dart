void main(List<String> args) {
  print(fullName(null, null));
  print(fullName('John', null));
  print(fullName(null, 'Doe'));
  print(fullName('John', 'Doe'));
}

String fullName(String? firstname, String? lastname) =>
    '${firstname.orDefault} ${lastname.orDefault}';

extension DefaultValues<T> on T? {
  T get orDefault {
    final shadow = this;
    if (shadow != null) {
      return shadow;
    }
    switch (T) {
      case int:
        return 0 as T;
      case double:
        return 0.0 as T;
      case String:
        return "" as T;
      case bool:
        return false as T;
      default:
        throw Exception('No defauult value of type');
    }
  }
}
