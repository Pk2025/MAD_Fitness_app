import 'package:flutter/material.dart';
import 'macronutrients_page.dart';
import 'diet_plans_page.dart';
import 'calorie_calculator_page.dart';

class NutritionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nutrition Guide', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.green[700]!, Colors.green[400]!],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Page Introduction
            Text(
              "Learn about nutrition essentials & plan your diet wisely.",
              style: TextStyle(fontSize: 16, color: Colors.black87),
            ),
            SizedBox(height: 15),

            // Cards Section
            Expanded(
              child: ListView(
                children: [
                  _buildCategoryCard(context, 'Macronutrients Guide', 'assets/images/macro.webp', MacronutrientsPage()),
                  _buildCategoryCard(context, 'Diet Plans Based on Goals', 'assets/images/dietplan.jpg', DietPlansPage()),
                  _buildCategoryCard(context, 'Calorie & Macronutrient Calculator', 'assets/images/calculator.jpg', CalorieCalculatorPage()),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCategoryCard(BuildContext context, String title, String imagePath, Widget page) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => page));
      },
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        elevation: 8,
        margin: EdgeInsets.symmetric(vertical: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
              child: Image.asset(imagePath, height: 170, width: double.infinity, fit: BoxFit.cover),
            ),
            Padding(
              padding: EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(title, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black87)),
                  ),
                  Icon(Icons.arrow_forward_ios, color: Colors.green[700])
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
