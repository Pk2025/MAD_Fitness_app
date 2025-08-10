import 'package:flutter/material.dart';

class CalorieCalculatorPage extends StatefulWidget {
  @override
  _CalorieCalculatorPageState createState() => _CalorieCalculatorPageState();
}

class _CalorieCalculatorPageState extends State<CalorieCalculatorPage> {
  final TextEditingController weightController = TextEditingController();
  final TextEditingController ageController = TextEditingController();
  double calories = 0;
  double protein = 0;
  double carbs = 0;
  double fats = 0;
  bool showResults = false;

  void calculate() {
    double weight = double.tryParse(weightController.text) ?? 0;
    int age = int.tryParse(ageController.text) ?? 0;

    if (weight > 0 && age > 0) {
      setState(() {
        calories = weight * 35;  // Approximate calorie calculation
        protein = weight * 2.2;  // Protein intake (grams)
        carbs = weight * 3;      // Carbohydrates intake (grams)
        fats = weight * 1;       // Healthy fats intake (grams)
        showResults = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calorie & Macronutrient Calculator'),
        backgroundColor: Colors.green[700],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Header Image
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                'assets/images/calculator.jpg',
                width: double.infinity,
                height: 180,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 20),

            // Input Fields
            TextField(
              controller: weightController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Enter your weight (kg)',
                prefixIcon: Icon(Icons.fitness_center),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 15),
            TextField(
              controller: ageController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Enter your age',
                prefixIcon: Icon(Icons.calendar_today),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),

            // Calculate Button
            ElevatedButton(
              onPressed: calculate,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green[700],
                padding: EdgeInsets.symmetric(vertical: 12, horizontal: 30),
              ),
              child: Text('Calculate', style: TextStyle(fontSize: 16, color: Colors.white)),
            ),
            SizedBox(height: 20),

            // Results Section
            if (showResults)
              Column(
                children: [
                  Text(
                    'Your Daily Intake:',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),

                  // Results Display with Cards
                  _buildResultCard('Calories', '$calories kcal', 'assets/images/calorie.webp'),
                  _buildResultCard('Protein', '$protein g', 'assets/images/protein.webp'),
                  _buildResultCard('Carbohydrates', '$carbs g', 'assets/images/carbs.jpeg'),
                  _buildResultCard('Fats', '$fats g', 'assets/images/fat.jpg'),
                ],
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildResultCard(String title, String value, String imagePath) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 5,
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.horizontal(left: Radius.circular(12)),
            child: Image.asset(
              imagePath,
              height: 70,
              width: 70,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 10),
          Padding(
            padding: EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                Text(value, style: TextStyle(fontSize: 14, color: Colors.grey[700])),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
