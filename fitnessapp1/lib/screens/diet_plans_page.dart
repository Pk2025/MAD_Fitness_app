import 'package:flutter/material.dart';

class DietPlansPage extends StatelessWidget {
  final List<Map<String, dynamic>> dietPlans = [
    {
      'title': 'Muscle Gain Diet',
      'description': 'High-protein diet with healthy carbs and fats to build muscle.',
      'image': 'assets/images/musclegain.jpg',
      'meals': [
        {'meal': 'Breakfast', 'food': 'Oatmeal + Eggs + Banana'},
        {'meal': 'Lunch', 'food': 'Grilled Chicken + Rice + Broccoli'},
        {'meal': 'Dinner', 'food': 'Salmon + Quinoa + Avocado'},
        {'meal': 'Snack', 'food': 'Protein Shake + Nuts'}
      ]
    },
    {
      'title': 'Fat Loss (Cutting) Diet',
      'description': 'Low-carb, high-protein meals to burn fat while maintaining muscle.',
      'image': 'assets/images/fatloss.jpg',
      'meals': [
        {'meal': 'Breakfast', 'food': 'Greek Yogurt + Berries + Almonds'},
        {'meal': 'Lunch', 'food': 'Grilled Fish + Sweet Potato + Spinach'},
        {'meal': 'Dinner', 'food': 'Lean Turkey + Mixed Vegetables'},
        {'meal': 'Snack', 'food': 'Green Tea + Cottage Cheese'}
      ]
    },
    {
      'title': 'Weight Gain Plan',
      'description': 'Calorie-dense meals to help gain weight in a healthy way.',
      'image': 'assets/images/weightgain.jpg',
      'meals': [
        {'meal': 'Breakfast', 'food': 'Peanut Butter Toast + Banana + Milk'},
        {'meal': 'Lunch', 'food': 'Chicken Breast + Brown Rice + Avocado'},
        {'meal': 'Dinner', 'food': 'Steak + Mashed Potatoes + Vegetables'},
        {'meal': 'Snack', 'food': 'Smoothie with Oats, Nuts, and Honey'}
      ]
    },
    {
      'title': 'Balanced Diet for Overall Health',
      'description': 'A well-rounded diet for long-term health and fitness.',
      'image': 'assets/images/balanceddiet.jpg',
      'meals': [
        {'meal': 'Breakfast', 'food': 'Whole Grain Toast + Scrambled Eggs + Orange Juice'},
        {'meal': 'Lunch', 'food': 'Grilled Chicken Salad + Quinoa'},
        {'meal': 'Dinner', 'food': 'Grilled Fish + Brown Rice + Steamed Vegetables'},
        {'meal': 'Snack', 'food': 'Nuts + Dark Chocolate'}
      ]
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Diet Plans'),
        backgroundColor: Colors.green[700],
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: dietPlans.map((plan) {
          return Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            elevation: 5,
            margin: EdgeInsets.symmetric(vertical: 8),
            child: ExpansionTile(
              leading: Image.asset(plan['image'], width: 60, height: 60, fit: BoxFit.cover),
              title: Text(plan['title'], style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              children: [
                Padding(
                  padding: EdgeInsets.all(12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(plan['description'], style: TextStyle(fontSize: 14, color: Colors.grey[700])),
                      SizedBox(height: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: (plan['meals'] as List<Map<String, String>>).map((meal) {
                          return Row(
                            children: [
                              Icon(Icons.restaurant, color: Colors.green[700]),
                              SizedBox(width: 10),
                              Text("${meal['meal']}: ", style: TextStyle(fontWeight: FontWeight.bold)),
                              Text(meal['food']!),
                            ],
                          );
                        }).toList(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}
