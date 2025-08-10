import 'package:flutter/material.dart';

class UpperBodyStrengthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Upper Body Strength'),
        backgroundColor: Colors.orangeAccent,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Upper Body Strength Workouts',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),

            _buildExerciseTile(
                'Push-ups',
                '3 sets of 15 reps',
                'assets/images/pushups.jpg',
                'Keep your core tight, back straight, and lower your body until your chest nearly touches the floor. Push back up while keeping elbows slightly tucked.'
            ),
            _buildExerciseTile(
                'Bench Press',
                '3 sets of 12 reps',
                'assets/images/benchpress.jpg',
                'Lie on a bench with feet flat on the floor. Lower the bar slowly to your chest, keeping elbows at a 75-degree angle. Press back up explosively.'
            ),
            _buildExerciseTile(
                'Pull-ups',
                '3 sets of 10 reps',
                'assets/images/pullups.webp',
                'Grab the bar with an overhand grip, pull yourself up until your chin is above the bar, and lower yourself back down with control.'
            ),
            _buildExerciseTile(
                'Dumbbell Shoulder Press',
                '3 sets of 12 reps',
                'assets/images/shoulderpress.webp',
                'Sit upright with dumbbells at shoulder level. Press the weights upward until arms are fully extended, then lower slowly.'
            ),
            _buildExerciseTile(
                'Bicep Curls',
                '3 sets of 15 reps',
                'assets/images/bicepcurls.webp',
                'Stand with dumbbells at your sides. Keep elbows close to your body, curl the weights up while squeezing your biceps, then lower slowly.'
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildExerciseTile(String exercise, String details, String imagePath, String guideline) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 4,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
                Text(
                  exercise,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 4),
                Text(
                  details,
                  style: TextStyle(fontSize: 16, color: Colors.orangeAccent, fontWeight: FontWeight.w500),
                ),
                SizedBox(height: 8),
                Text(
                  guideline,
                  style: TextStyle(fontSize: 14, color: Colors.grey[700]),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
