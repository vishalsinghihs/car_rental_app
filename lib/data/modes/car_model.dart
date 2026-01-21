import '../../domain/entities/car.dart';

class CarModel extends Car {
  CarModel({
    required super.name,
    required super.model,
    required super.pricePerDay,
  });

  factory CarModel.fromMap(Map<String, dynamic> map) {
    return CarModel(
      name: map['name'],
      model: map['model'],
      pricePerDay: map['price'],
    );
  }
}
