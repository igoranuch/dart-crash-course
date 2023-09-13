import "dart:mirrors";

void main(List<String> args) {
  final person = Person(
    name: 'John',
    age: 21,
  );
  print(person);
  final house = House(
    address: '123 Main Street',
    rooms: 2,
  );
  print(house);
}

mixin HasDescription {
  @override
  String toString() {
    final reflection = reflect(this);
    final thisType = MirrorSystem.getName(
      reflection.type.simpleName,
    );

    final variables =
        reflection.type.declarations.values.whereType<VariableMirror>();

    final properties = <String, dynamic>{
      for (final field in variables)
        field.asKey: reflection
            .getField(
              field.simpleName,
            )
            .reflectee,
    };

    return "$thisType = $properties";
  }
}

extension AsKey on VariableMirror {
  String get asKey {
    final fieldName = MirrorSystem.getName(simpleName);
    final fieldType = MirrorSystem.getName(type.simpleName);
    return "$fieldName ($fieldType)";
  }
}

class Person with HasDescription {
  final String name;
  final int age;

  const Person({
    required this.name,
    required this.age,
  });
}

class House with HasDescription {
  final String address;
  final int rooms;

  const House({
    required this.address,
    required this.rooms,
  });
}
