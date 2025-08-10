import 'package:flutter/material.dart';

class CoreTrainingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Core Training'),
        backgroundColor: Colors.orangeAccent, // AppBar color
      ),
      body: Stack(
        children: [
          // 🔹 Background Image
          Positioned.fill(
            child: Image.asset(
              'assets/images/abs.webp', // Background Image Path
              fit: BoxFit.cover,
            ),
          ),

          // 🔹 Dark Overlay for Better Readability
          Container(
            color: Colors.black.withOpacity(0.6),
          ),

          // 🔹 Core Training Workouts
          SingleChildScrollView(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // 📌 Page Title
                Text(
                  '🔥 Core Training Workouts',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 10),

                // 📌 Main Core Workouts Section
                _buildWorkoutCard(
                  'Crunches',
                  'assets/images/crunches.webp',
                  'Perform 3 sets of 15 reps to strengthen your abs.',
                ),
                _buildWorkoutCard(
                  'Leg Raises',
                  'assets/images/legraises.jpg',
                  'Do 3 sets of 12 reps for lower abs activation.',
                ),
                _buildWorkoutCard(
                  'Bicycle Crunches',
                  'assets/images/bicyclecrunch.webp',
                  '3 sets of 20 reps, alternating sides.',
                ),
                _buildWorkoutCard(
                  'Russian Twists',
                  'assets/images/russiantwist.jpg',
                  'Perform 3 sets of 20 twists with or without weights.',
                ),
                _buildWorkoutCard(
                  'Plank Hold',
                  'assets/images/plank.jpg',
                  'Hold a plank for 30-60 seconds to engage core muscles.',
                ),
                _buildWorkoutCard(
                  'Hanging Leg Raises',
                  'assets/images/hangingleg.jpg',
                  '3 sets of 10 reps to target lower abs.',
                ),
                _buildWorkoutCard(
                  'Mountain Climbers',
                  'assets/images/mountain.webp',
                  '3 sets of 30 seconds for endurance and core activation.',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Function to create workout cards
  Widget _buildWorkoutCard(String title, String imagePath, String description) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 5,
      color: Colors.white.withOpacity(0.9),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
            child: Image.asset(imagePath, width: double.infinity, height: 150, fit: BoxFit.cover),
          ),
          Padding(
            padding: EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                SizedBox(height: 5),
                Text(description, style: TextStyle(fontSize: 14, color: Colors.black54)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
