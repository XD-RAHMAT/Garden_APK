import 'package:flutter/material.dart';

class CustomTab extends StatelessWidget {
  final String text;
  final bool selected;

  const CustomTab({super.key, required this.text, this.selected = false});

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(text),
      backgroundColor: selected ? Colors.green : Colors.grey[300],
    );
  }
}