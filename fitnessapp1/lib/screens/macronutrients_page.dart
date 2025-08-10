import 'package:flutter/material.dart';

class MacronutrientsPage extends StatelessWidget {
  final List<Map<String, dynamic>> nutrients = [
    {
      'title': 'Protein',
      'description': 'Essential for muscle repair and growth.',
      'image': 'assets/images/protein.webp',
      'foods': [
        {'name': 'Chicken', 'image': 'assets/images/chickenbreast.jpg'},
        {'name': 'Eggs', 'image': 'assets/images/eggs.jpg'},
        {'name': 'Fish', 'image': 'assets/images/fish.webp'},
        {'name': 'Lentils', 'image': 'assets/images/lentils.jpg'},
      ]
    },
    {
      'title': 'Carbohydrates',
      'description': 'Primary energy source for physical activity.',
      'image': 'assets/images/carbs.jpeg',
      'foods': [
        {'name': 'Brown Rice', 'image': 'assets/images/brownrice.jpg'},
        {'name': 'Oats', 'image': 'assets/images/oats.jpg'},
        {'name': 'Sweet Potatoes', 'image': 'assets/images/sweetpotato.jpg'},
      ]
    },
    {
      'title': 'Fiber',
      'description': 'Supports digestion and gut health.',
      'image': 'assets/images/fibre.jpg',
      'foods': [
        {'name': 'Apple', 'image': 'assets/images/apple.webp'},
        {'name': 'Spinach', 'image': 'assets/images/spinach.webp'},
        {'name': 'Whole Grains', 'image': 'assets/images/wholegrains.jpg'},
      ]
    },
    {
      'title': 'Healthy Fats',
      'description': 'Essential for brain function and heart health.',
      'image': 'assets/images/fat.jpg',
      'foods': [
        {'name': 'Avocado', 'image': 'assets/images/avacados.jpg'},
        {'name': 'Nuts', 'image': 'assets/images/nuts.jpg'},
        {'name': 'Olive Oil', 'image': 'assets/images/oliveoil.webp'},
      ]
    },
    {
      'title': 'Vitamins & Minerals',
      'description': 'Vital for immunity and overall wellness.',
      'image': 'assets/images/vitamin.jpg',
      'foods': [
        {'name': 'Vitamin C (Citrus)', 'image': 'assets/images/citrus.jpg'},
        {'name': 'Calcium (Milk)', 'image': 'assets/images/milk.jpg'},
      ]
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Macronutrients Guide',
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0.5,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        child: ListView.builder(
          itemCount: nutrients.length,
          itemBuilder: (context, index) {
            final nutrient = nutrients[index];

            return Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              elevation: 3,
              margin: EdgeInsets.symmetric(vertical: 8),
              child: ExpansionTile(
                tilePadding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                title: Text(
                  nutrient['title'],
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  nutrient['description'],
                  style: TextStyle(fontSize: 14, color: Colors.grey[700]),
                ),
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(nutrient['image'], width: 50, height: 50, fit: BoxFit.cover),
                ),
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: (nutrient['foods'] as List<Map<String, String>>).map((food) {
                        return Padding(
                          padding: EdgeInsets.symmetric(vertical: 5),
                          child: Row(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Image.asset(food['image']!, width: 50, height: 50, fit: BoxFit.cover),
                              ),
                              SizedBox(width: 12),
                              Text(
                                food['name']!,
                                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
