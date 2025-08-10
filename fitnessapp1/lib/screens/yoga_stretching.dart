import 'package:flutter/material.dart';

class YogaStretchingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Yoga & Stretching'),
        backgroundColor: Colors.green,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/yogabg1.webp'), // 📸 Background image
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.white.withOpacity(0.85),
              BlendMode.lighten,
            ),
          ),
        ),
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildHeader('🧘 Yoga & Stretching'),
              _buildText(
                  'Enhance flexibility, relieve stress, and improve posture with these yoga and stretching exercises.'),
              SizedBox(height: 20),

              _buildHeader('📌 Guidelines'),
              _buildGuideline('Always warm up before stretching to prevent injuries.'),
              _buildGuideline('Hold each pose for 20–30 seconds and breathe deeply.'),
              _buildGuideline('Maintain proper posture and avoid overstretching.'),
              _buildGuideline('Stretch both sides evenly for balanced flexibility.'),
              SizedBox(height: 25),

              _buildHeader('🔥 Yoga & Stretching Exercises'),
              _buildExerciseCard(
                'Downward Dog',
                'assets/images/downward_dog.jpg',
                'Hold for 30 seconds',
                'Great for stretching hamstrings, calves, and shoulders.',
              ),
              _buildExerciseCard(
                'Child’s Pose',
                'assets/images/childpose.jpg',
                'Hold for 30 seconds',
                'Relieves tension in the lower back and shoulders.',
              ),
              _buildExerciseCard(
                'Seated Forward Bend',
                'assets/images/seatedforward.jpeg',
                'Hold for 20–30 seconds',
                'Stretches the spine, shoulders, and hamstrings.',
              ),
              _buildExerciseCard(
                'Cat-Cow Stretch',
                'assets/images/catcow.jpg',
                'Perform 10 reps',
                'Improves spinal flexibility and reduces back pain.',
              ),
              _buildExerciseCard(
                'Butterfly Stretch',
                'assets/images/butterfly.jpg',
                'Hold for 30 seconds',
                'Targets inner thighs and improves hip mobility.',
              ),
              SizedBox(height: 25),

              _buildHeader('💨 Breathing Techniques'),
              _buildGuideline('Breathe in through your nose, filling your lungs completely.'),
              _buildGuideline('Hold your breath for a few seconds for better oxygen circulation.'),
              _buildGuideline('Exhale slowly through your mouth, focusing on relaxation.'),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeader(String title) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
          color: Colors.green[800],
        ),
      ),
    );
  }

  Widget _buildText(String text) {
    return Text(
      text,
      style: TextStyle(fontSize: 16.5, color: Colors.grey[800]),
    );
  }

  Widget _buildGuideline(String text) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(Icons.check_circle_outline, color: Colors.green, size: 18),
          SizedBox(width: 8),
          Expanded(
            child: Text(
              text,
              style: TextStyle(fontSize: 15.5, height: 1.4),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildExerciseCard(String title, String imagePath, String reps, String description) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
      elevation: 4,
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(imagePath, width: 70, height: 70, fit: BoxFit.cover),
            ),
            SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title,
                      style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600)),
                  SizedBox(height: 4),
                  Text(reps,
                      style: TextStyle(fontSize: 15, color: Colors.blueAccent)),
                  SizedBox(height: 4),
                  Text(description, style: TextStyle(fontSize: 14.5)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
