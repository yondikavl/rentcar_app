import 'package:flutter/material.dart';
import 'package:rentcar_app/data/models/car.dart';

class MoreCard extends StatelessWidget {
  final Car car;

  const MoreCard({super.key, required this.car});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: const Color(0xFF2E3192),
        borderRadius: BorderRadius.circular(18),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                car.model,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: [
              const Icon(
                Icons.directions_car,
                color: Colors.white,
                size: 16,
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                '> ${car.distance} km',
                style: const TextStyle(color: Colors.white, fontSize: 14),
              ),
              const SizedBox(
                width: 10,
              ),
              const Icon(
                Icons.battery_full,
                color: Colors.white,
                size: 16,
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                car.fuelCapacity.toString(),
                style: const TextStyle(color: Colors.white, fontSize: 14),
              ),
            ],
          ),
          const Icon(
            Icons.arrow_forward_ios,
            color: Colors.white,
            size: 24,
          ),
        ],
      ),
    );
  }
}
