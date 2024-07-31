import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:rentcar_app/data/models/Car.dart';
import 'package:rentcar_app/presentation/widgets/car_card.dart';

class CarListScreen extends StatelessWidget {
  final List<Car> cars = [
    Car(
        model: 'Fortuner GR',
        distance: 800,
        fuelCapacity: 60,
        pricePerHour: 50),
    Car(
        model: 'Fortuner GR',
        distance: 800,
        fuelCapacity: 60,
        pricePerHour: 50),
    Car(
        model: 'Fortuner GR',
        distance: 800,
        fuelCapacity: 60,
        pricePerHour: 50),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: cars.length,
        itemBuilder: (context, index) {
          return CarCard(car: cars[index]);
        },
      ),
    );
  }
}
