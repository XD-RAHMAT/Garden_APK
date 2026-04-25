import 'package:flutter/material.dart';
import '../../core/constants/colors.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: CustomScrollView(
        slivers: [
          _buildSliverAppBar(),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildSearchBar(),
                  SizedBox(height: 20),
                  _buildWeatherCard(),
                  SizedBox(height: 24),
                  Text("Commodities and Food", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                  SizedBox(height: 16),
                  _buildCommoditiesList(),
                  SizedBox(height: 24),
                  Text("My Fields", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                  SizedBox(height: 16),
                  _buildMyFieldCard(),
                  SizedBox(height: 80), // Padding untuk Floating Bottom Nav
                ],
              ),
            ),
          ),
        ],
      ),
      // Floating Bottom Navigation
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        margin: EdgeInsets.symmetric(horizontal: 24),
        height: 65,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(Icons.home, color: AppColors.lightGreen),
            Icon(Icons.cloud_outlined, color: Colors.grey),
            Icon(Icons.message_outlined, color: Colors.grey),
            Icon(Icons.person_outline, color: Colors.grey),
          ],
        ),
      ),
    );
  }

  Widget _buildSliverAppBar() {
    return SliverAppBar(
      backgroundColor: AppColors.primaryGreen,
      expandedHeight: 120.0,
      floating: false,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        titlePadding: EdgeInsets.only(left: 20, bottom: 16),
        title: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Hello, Farmers", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20)),
            Text("Sunday, 01 Dec 2024", style: TextStyle(color: Colors.white70, fontSize: 12)),
          ],
        ),
      ),
      actions: [
        IconButton(icon: Icon(Icons.refresh, color: Colors.white), onPressed: () {}),
        SizedBox(width: 10),
      ],
    );
  }

  Widget _buildSearchBar() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.05), blurRadius: 10)],
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: "Search here...",
          prefixIcon: Icon(Icons.search, color: Colors.grey),
          suffixIcon: Icon(Icons.mic, color: AppColors.primaryGreen),
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(vertical: 15),
        ),
      ),
    );
  }

  Widget _buildWeatherCard() {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: AppColors.cardBackground,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.05), blurRadius: 10)],
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.location_on, color: AppColors.primaryGreen, size: 16),
                  SizedBox(width: 4),
                  Text("Chianti Hills"),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.cloud, color: Colors.lightBlue),
                  SizedBox(width: 8),
                  Text("+16°C", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                ],
              )
            ],
          ),
          SizedBox(height: 20),
          // Baris Info Cuaca
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _weatherInfo(Icons.thermostat, "Soil temp", "+22 C"),
              _weatherInfo(Icons.water_drop, "Humidity", "59%"),
              _weatherInfo(Icons.air, "Wind", "6 m/s"),
              _weatherInfo(Icons.umbrella, "Precipitation", "0 mm"),
            ],
          )
        ],
      ),
    );
  }

  Widget _weatherInfo(IconData icon, String label, String value) {
    return Column(
      children: [
        Icon(icon, color: Colors.grey, size: 20),
        SizedBox(height: 4),
        Text(value, style: TextStyle(fontWeight: FontWeight.bold)),
        Text(label, style: TextStyle(fontSize: 10, color: Colors.grey)),
      ],
    );
  }

  Widget _buildCommoditiesList() {
    List<String> items = ["Rice", "Corn", "Grapes", "Potato", "Olive"];
    return SizedBox(
      height: 80,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Column(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.05), blurRadius: 5)],
                  ),
                  child: Center(child: Icon(Icons.grass, color: AppColors.primaryGreen)), // Ganti dengan asset image
                ),
                SizedBox(height: 8),
                Text(items[index], style: TextStyle(fontSize: 12)),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _buildMyFieldCard() {
    return Container(
      height: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: NetworkImage('https://images.unsplash.com/photo-1586771107445-d3af2e847cbb?q=80&w=1000&auto=format&fit=crop'), // Placeholder
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}