import 'package:flutter/material.dart';
import 'full_body_workout.dart';
import 'upper_body_strength.dart';
import 'yoga_stretching.dart';
import 'legs_workout.dart';
import 'core_training.dart';
import 'nutrition_page.dart'; // ✅ Added Nutrition Page

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.orangeAccent, Colors.deepOrange],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 📌 Workouts Section
            Text(
              '🏋️ Workouts',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),

            _buildWorkoutCard(context, 'Full Body Workout', 'assets/images/fullbody.jpg', FullBodyWorkoutPage()),
            _buildWorkoutCard(context, 'Upper Body Strength', 'assets/images/upperbody.webp', UpperBodyStrengthPage()),
            _buildWorkoutCard(context, 'Yoga & Stretching', 'assets/images/yoga.png', YogaStretchingPage()),
            _buildWorkoutCard(context, 'Legs Workout', 'assets/images/leg.webp', LegsWorkoutPage()),
            _buildWorkoutCard(context, 'Core Training', 'assets/images/abs.webp', CoreTrainingPage()),

            SizedBox(height: 20), // Space between sections

            // 📌 Nutrition Section
            Text(
              '🥗 Nutrition',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            _buildNutritionCard(context, 'Nutrition Guide', 'assets/images/nutrition.webp', NutritionPage()), // ✅ Linked Nutrition Page
          ],
        ),
      ),
    );
  }

  // 📌 Function to Build Workout Cards
  Widget _buildWorkoutCard(BuildContext context, String title, String imagePath, Widget page) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 5,
      margin: EdgeInsets.symmetric(vertical: 6), // ✅ Added spacing
      child: ListTile(
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.asset(imagePath, width: 60, height: 60, fit: BoxFit.cover),
        ),
        title: Text(title, style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
        trailing: Icon(Icons.arrow_forward_ios, color: Colors.grey),
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => page));
        },
      ),
    );
  }

  // 📌 Function to Build Nutrition Cards (Now Clickable)
  Widget _buildNutritionCard(BuildContext context, String title, String imagePath, Widget page) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => page));
      },
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        elevation: 5,
        margin: EdgeInsets.symmetric(vertical: 6), // ✅ Added spacing
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
              child: Image.asset(imagePath, width: double.infinity, height: 150, fit: BoxFit.cover),
            ),
            Padding(
              padding: EdgeInsets.all(12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(title, style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
                  ),
                  Icon(Icons.arrow_forward_ios, color: Colors.orangeAccent)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
