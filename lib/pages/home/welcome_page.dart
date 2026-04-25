import 'dart:ui';
import 'package:flutter/material.dart';
import '../../core/constants/colors.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Background Image (Pastikan ada assets/wheat_bg.jpg)
          Image.network(
            'https://images.unsplash.com/photo-1574943320219-553eb213f72d?q=80&w=1000&auto=format&fit=crop', // Placeholder
            fit: BoxFit.cover,
          ),

          // Gradient Overlay agar teks terbaca
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  AppColors.background.withOpacity(0.9),
                  Colors.transparent,
                  Colors.black.withOpacity(0.5),
                ],
              ),
            ),
          ),

          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Logo Placeholder
                  Icon(Icons.eco, color: AppColors.primaryGreen, size: 40),
                  SizedBox(height: 20),
                  Text(
                    "THE NEW ERA OF\nAGRICULTURE",
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w900,
                      color: AppColors.primaryGreen,
                      height: 1.2,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Sustainable farming solutions for a\nbetter tomorrow.",
                    style: TextStyle(
                      fontSize: 14,
                      color: AppColors.textDark.withOpacity(0.7),
                    ),
                  ),

                  Spacer(), // Mendorong tombol ke bawah

                  // Glassmorphism Button
                  ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                      child: Container(
                        width: double.infinity,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(color: Colors.white.withOpacity(0.5)),
                        ),
                        child: TextButton(
                          onPressed: () {
                            // Navigasi ke Home Page
                          },
                          child: Text(
                            "Get Started",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}