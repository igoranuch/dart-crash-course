void main(List<String> args) {
  const car = Car();
  print(car.vehicleType);
  car.accelerate();
  car.decelerate();

  const motorcycle = Motorcycle();
  print(motorcycle.vehicleType);
  motorcycle.accelerate();
  motorcycle.decelerate();
}

abstract class Vehicle {
  final VehicleType vehicleType;

  const Vehicle({required this.vehicleType});

  void accelerate() => print("$vehicleType accelerating");
  void decelerate() => print("$vehicleType decelerating");
}

enum VehicleType {
  car,
  truck,
  motorcycle,
  bicycle,
}

class Car extends Vehicle {
  const Car() : super(vehicleType: VehicleType.car);
}

class Motorcycle implements Vehicle {
  const Motorcycle();

  @override
  void accelerate() => print("Motorcycle is accelerating");

  @override
  void decelerate() => print("Motorcycle is decelerating");

  @override
  VehicleType get vehicleType => VehicleType.motorcycle;
}
