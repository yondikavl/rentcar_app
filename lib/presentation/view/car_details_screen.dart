import 'package:flutter/material.dart';
import 'package:rentcar_app/data/models/car.dart';
import 'package:rentcar_app/presentation/widgets/car_card.dart';
import 'package:rentcar_app/presentation/widgets/more_card.dart';

class CarDetailsScreen extends StatelessWidget {
  final Car car;

  const CarDetailsScreen({super.key, required this.car});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.info_outline),
            Text(' Informasi'),
          ],
        ),
      ),
      body: Column(
        children: [
          CarCard(
            car: Car(
                model: car.model,
                distance: car.distance,
                fuelCapacity: car.fuelCapacity,
                pricePerHour: car.pricePerHour),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Color(0xFF2E3192),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 40,
                          backgroundImage: AssetImage(
                            'assets/user.png',
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Yondi Kavio',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '\$4.567',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Container(
                    height: 180,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage('assets/maps.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                MoreCard(
                  car: Car(
                      model: car.model + "-1",
                      distance: car.distance + 100,
                      fuelCapacity: car.fuelCapacity + 100,
                      pricePerHour: car.pricePerHour + 10),
                ),
                SizedBox(
                  height: 5,
                ),
                MoreCard(
                  car: Car(
                      model: car.model + "-2",
                      distance: car.distance + 200,
                      fuelCapacity: car.fuelCapacity + 200,
                      pricePerHour: car.pricePerHour + 20),
                ),
                SizedBox(
                  height: 5,
                ),
                MoreCard(
                  car: Car(
                      model: car.model + "-3",
                      distance: car.distance + 300,
                      fuelCapacity: car.fuelCapacity + 300,
                      pricePerHour: car.pricePerHour + 30),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
