import 'package:flutter/material.dart';
import '../../data/modes/booking_mode.dart';

class BookingProvider extends ChangeNotifier {
  BookingModel? booking;

  void saveBooking(BookingModel data) {
    booking = data;
    notifyListeners();
  }
}
