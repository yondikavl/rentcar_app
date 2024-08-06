import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:rentcar_app/data/models/car.dart';
import 'package:rentcar_app/presentation/widgets/car_card.dart';

class CarListScreen extends StatelessWidget {
  final List<Car> cars = [
    Car(
        model: 'Fortuner GR',
        distance: 800,
        fuelCapacity: 60,
        pricePerHour: 50),
    Car(
        model: 'Civic Turbo',
        distance: 600,
        fuelCapacity: 47,
        pricePerHour: 40),
    Car(
        model: 'Pajero Sport',
        distance: 750,
        fuelCapacity: 70,
        pricePerHour: 55),
    Car(model: 'Alphard', distance: 500, fuelCapacity: 75, pricePerHour: 60),
    Car(model: 'Jazz RS', distance: 650, fuelCapacity: 42, pricePerHour: 35),
  ];

  CarListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pilih mobil'),
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Color(0xFF2E3192),
      ),
      body: ListView.builder(
        itemCount: cars.length,
        itemBuilder: (context, index) {
          return CarCard(car: cars[index]);
        },
      ),
    );
  }
}
