import 'package:flutter/material.dart';

class CarCard extends StatelessWidget {
  final String title;
  const CarCard({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Text(title),
      ),
    );
  }
}
