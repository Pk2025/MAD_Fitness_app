import 'package:flutter/material.dart';

class FullBodyWorkoutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Full Body Workout'),
        backgroundColor: Colors.orange,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 🔥 Workout Title
            Text(
              '🏋️ Full Body Workout Routine',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),

            // 🏃 Workout List
            Expanded(
              child: ListView(
                children: [
                  workoutCard(
                    context,
                    'Push-Ups',
                    'assets/images/pushups.jpg',
                    'Great for upper body strength and endurance.',
                    '''
                    🔹 Start in a plank position with hands shoulder-width apart.
                    🔹 Lower your body until your chest is just above the ground.
                    🔹 Push back up to the starting position.
                    🔹 Keep your core tight and back straight.
                    🔹 Perform 3 sets of 12-15 reps.
                    ''',
                  ),
                  workoutCard(
                    context,
                    'Squats',
                    'assets/images/squats.webp',
                    'Boosts lower body power and stability.',
                    '''
                    🔹 Stand with feet shoulder-width apart.
                    🔹 Lower your hips down and back as if sitting in a chair.
                    🔹 Keep your knees behind your toes.
                    🔹 Push through your heels to return to standing.
                    🔹 Perform 3 sets of 15 reps.
                    ''',
                  ),
                  workoutCard(
                    context,
                    'Burpees',
                    'assets/images/burpees.webp',
                    'Full-body cardio exercise that builds stamina.',
                    '''
                    🔹 Start standing, then drop into a squat position.
                    🔹 Kick your legs back into a push-up position.
                    🔹 Perform a push-up, then jump your feet forward.
                    🔹 Explode up into a jump and repeat.
                    🔹 Perform 3 sets of 10-12 reps.
                    ''',
                  ),
                  workoutCard(
                    context,
                    'Lunges',
                    'assets/images/lunges.jpg',
                    'Enhances leg strength and balance.',
                    '''
                    🔹 Stand straight with feet together.
                    🔹 Step forward with one leg and lower your body.
                    🔹 Keep your front knee at a 90-degree angle.
                    🔹 Push back to the starting position and switch legs.
                    🔹 Perform 3 sets of 12 reps per leg.
                    ''',
                  ),
                  workoutCard(
                    context,
                    'Plank',
                    'assets/images/plank.jpg',
                    'Strengthens the core and improves posture.',
                    '''
                    🔹 Start in a forearm plank position.
                    🔹 Keep your body in a straight line from head to heels.
                    🔹 Engage your core and hold the position.
                    🔹 Avoid sagging hips or raising your butt too high.
                    🔹 Hold for 30-60 seconds, repeat 3 times.
                    ''',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // 📌 Workout Card with Guidelines
  Widget workoutCard(
      BuildContext context,
      String title,
      String imagePath,
      String description,
      String guide,
      ) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 6,
      margin: EdgeInsets.only(bottom: 12),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
        ),
        padding: EdgeInsets.all(12),
        child: Column(
          children: [
            Row(
              children: [
                // 📸 Workout Image
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(imagePath, width: 80, height: 80, fit: BoxFit.cover),
                ),
                SizedBox(width: 12),

                // 📌 Workout Details
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black87),
                      ),
                      SizedBox(height: 5),
                      Text(
                        description,
                        style: TextStyle(fontSize: 14, color: Colors.grey[700]),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),

            // 🔥 Exercise Guide Button
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  showGuideDialog(context, title, guide);
                },
                child: Text('View Guide', style: TextStyle(color: Colors.orange, fontWeight: FontWeight.bold)),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // 📌 Function to Show Detailed Guide in Dialog
  void showGuideDialog(BuildContext context, String title, String guide) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
          content: Text(guide, style: TextStyle(fontSize: 14, color: Colors.black87)),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Close', style: TextStyle(color: Colors.orange, fontWeight: FontWeight.bold)),
            ),
          ],
        );
      },
    );
  }
}
