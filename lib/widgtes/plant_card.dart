import 'package:flutter/material.dart';
import '../models/plant_model.dart';

class PlantCard extends StatelessWidget {
  final Plant plant;

  const PlantCard({super.key, required this.plant});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(plant.image),
          ),
          const SizedBox(height: 10),
          Text(plant.name,
              style:
              const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          Text(plant.harvest),
          Text(plant.yieldAmount),
        ],
      ),
    );
  }
}