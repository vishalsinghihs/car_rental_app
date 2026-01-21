import 'package:flutter/material.dart';
import '../../data/repositories/car_repository.dart';
import '../../domain/entities/car.dart';

class CarProvider extends ChangeNotifier {
  final CarRepository _repository = CarRepository();
  List<Car> cars = [];

  void fetchCars() {
    cars = _repository.getCars();
    notifyListeners();
  }
}
