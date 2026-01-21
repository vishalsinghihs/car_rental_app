import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../presentation/providers/booking_provider.dart';
import '../../domain/entities/car.dart';
import '../data/modes/booking_mode.dart';
import '../screens/booking_conformation_screen.dart';

class BookingScreen extends StatelessWidget {
  final Car car;
  BookingScreen({super.key, required this.car});

  final _formKey = GlobalKey<FormState>();
  final nameCtrl = TextEditingController();
  final locationCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Booking')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(controller: nameCtrl, decoration: const InputDecoration(labelText: 'Name')),
              TextFormField(controller: locationCtrl, decoration: const InputDecoration(labelText: 'Location')),
              const Spacer(),
              ElevatedButton(
                onPressed: () {
                  context.read<BookingProvider>().saveBooking(
                        BookingModel(
                          name: nameCtrl.text,
                          location: locationCtrl.text,
                          date: DateTime.now().toString(),
                        ),
                      );
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const BookingConfirmationScreen(),
                    ),
                  );
                },
                child: const Text('Confirm'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
