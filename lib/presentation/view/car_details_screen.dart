import 'package:flutter/material.dart';
import 'package:rentcar_app/data/models/Car.dart';
import 'package:rentcar_app/presentation/widgets/car_card.dart';

class CarDetailsScreen extends StatelessWidget {
  const CarDetailsScreen({super.key});

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
                model: 'Fortuner GR',
                distance: 800,
                fuelCapacity: 60,
                pricePerHour: 50),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
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
          )
        ],
      ),
    );
  }
}
