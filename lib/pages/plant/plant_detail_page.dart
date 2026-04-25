import 'dart:ui';
import 'package:flutter/material.dart';
import '../../core/constants/colors.dart';

class PlantDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Map/Image
          Positioned.fill(
            child: Image.network(
              'https://images.unsplash.com/photo-1464226184884-fa280b87c399?q=80&w=1000&auto=format&fit=crop', // Placeholder Drone View
              fit: BoxFit.cover,
            ),
          ),

          // Top Bar (Back Button & Field Info)
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white.withOpacity(0.8),
                    child: IconButton(
                      icon: Icon(Icons.arrow_back, color: Colors.black),
                      onPressed: () => Navigator.pop(context),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.8),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.eco, color: AppColors.primaryGreen, size: 16), // Ganti image asset
                        SizedBox(width: 8),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text("Olive Field", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
                            Text("Chianti Hills", style: TextStyle(fontSize: 10, color: Colors.grey)),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),

          // Floating Tools Kanan (Map Controls)
          Positioned(
            right: 20,
            top: 200,
            child: Column(
              children: [
                _buildMapButton(Icons.layers),
                SizedBox(height: 16),
                _buildMapButton(Icons.add),
                SizedBox(height: 8),
                _buildMapButton(Icons.remove),
              ],
            ),
          ),

          // Bottom Info Card
          Positioned(
            bottom: 30,
            left: 20,
            right: 20,
            child: Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.1), blurRadius: 10)],
              ),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.network(
                      'https://images.unsplash.com/photo-1500382017468-9049fed747ef?q=80&w=200&auto=format&fit=crop', // Placeholder gambar daun
                      width: 60,
                      height: 60,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Olive Fields", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                        Text("Harvest On Dec, 24 2024", style: TextStyle(color: Colors.grey, fontSize: 12)),
                        SizedBox(height: 8),
                        Row(
                          children: [
                            Icon(Icons.grass, color: AppColors.primaryGreen, size: 16),
                            SizedBox(width: 4),
                            Text("7500 K.g/ha", style: TextStyle(color: AppColors.primaryGreen, fontWeight: FontWeight.bold)),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildMapButton(IconData icon) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.8),
        shape: BoxShape.circle,
      ),
      child: IconButton(icon: Icon(icon, color: Colors.black54), onPressed: () {}),
    );
  }
}