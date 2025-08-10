import 'package:flutter/material.dart';

class LegsWorkoutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Legs Workout'),
        backgroundColor: Colors.orangeAccent, // Custom app bar color
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Section Title
            Text(
              'Warm-Up for Leg Day',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.blue),
            ),
            SizedBox(height: 10),

            _buildExerciseCard(
              'Jumping Jacks',
              'assets/images/jumpingjack.webp',
              'Perform 2 sets of 30 seconds to increase heart rate and activate leg muscles.',
            ),
            _buildExerciseCard(
              'Leg Swings',
              'assets/images/legswing.jpg',
              'Do 2 sets of 10 swings per leg to improve flexibility and mobility.',
            ),
            _buildExerciseCard(
              'Bodyweight Squats',
              'assets/images/bodysquat.webp',
              'Perform 2 sets of 15 reps to prepare joints and muscles for heavier lifts.',
            ),

            SizedBox(height: 20),

            // Main Workout
            Text(
              'Leg Strength Training',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.red),
            ),
            SizedBox(height: 10),

            _buildExerciseCard(
              'Squats',
              'assets/images/squats.webp',
              'Perform 3-4 sets of 12 reps. Keep your back straight and go as low as possible for best results.',
            ),
            _buildExerciseCard(
              'Lunges',
              'assets/images/lunges.jpg',
              'Do 3 sets of 10 reps per leg. Ensure your knee doesn’t go past your toes while stepping forward.',
            ),
            _buildExerciseCard(
              'Leg Press',
              'assets/images/legpress.jpg',
              'Perform 3-4 sets of 10 reps. Adjust the weight according to your strength level.',
            ),
            _buildExerciseCard(
              'Calf Raises',
              'assets/images/calf.webp',
              'Do 4 sets of 15 reps. Hold the top position for 2 seconds to maximize muscle engagement.',
            ),
            _buildExerciseCard(
              'Deadlifts',
              'assets/images/deadliftleg.jpg',
              'Perform 3 sets of 8 reps. Maintain a neutral spine to prevent injuries.',
            ),

            SizedBox(height: 20),

            // Stretching Guide
            Text(
              'Post-Workout Stretching',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.green),
            ),
            SizedBox(height: 10),

            _buildExerciseCard(
              'Hamstring Stretch',
              'assets/images/hamstringstretch.jpg',
              'Hold for 20-30 seconds per leg to relax your hamstrings and prevent stiffness.',
            ),
            _buildExerciseCard(
              'Quad Stretch',
              'assets/images/quadstretch.jpg',
              'Hold for 20-30 seconds per leg to improve flexibility and recovery.',
            ),
            _buildExerciseCard(
              'Seated Forward Fold',
              'assets/images/seatedforward.jpeg',
              'Hold for 30 seconds to stretch the lower back and hamstrings.',
            ),

            SizedBox(height: 20),

            // Safety & Tips
            Text(
              'Tips for Safe Leg Workouts',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.orange),
            ),
            SizedBox(height: 10),
            Text(
              '• Warm up properly before starting.\n'
                  '• Focus on proper form to avoid injuries.\n'
                  '• Increase weight gradually for strength gains.\n'
                  '• Stretch after your workout to improve flexibility.\n'
                  '• Maintain a balanced diet to support muscle growth.',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }

  // Function to build exercise cards
  Widget _buildExerciseCard(String title, String imagePath, String description) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 5,
      margin: EdgeInsets.symmetric(vertical: 10),
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
                Text(description, style: TextStyle(fontSize: 16)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
