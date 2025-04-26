import 'package:flutter/material.dart';
import 'assigned_tasks_screen.dart';

class StudentCalendarScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Student Calendar')),
      body: Center(
        child: Column(
          children: [
            // Your Calendar widget goes here
            ElevatedButton(
              onPressed: () {
                // Navigate to tasks assigned on a specific date
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => AssignedTasksScreen()),
                );
              },
              child: Text('Tap to view tasks'),
            ),
          ],
        ),
      ),
    );
  }
}
