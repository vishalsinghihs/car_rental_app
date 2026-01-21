import '../mock/car_mock_data.dart';
import '../modes/car_model.dart';

class CarRepository {
  List<CarModel> getCars() {
    return carMockData
        .map((car) => CarModel.fromMap(car))
        .toList();
  }
}
