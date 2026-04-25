import 'package:flutter/material.dart';

class AddPlantPage extends StatelessWidget {
  const AddPlantPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Add Plant")),
      body: const Center(child: Text("Add Plant Page")),
    );
  }
}