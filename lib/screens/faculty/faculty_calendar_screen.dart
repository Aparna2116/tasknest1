import 'package:flutter/material.dart';
import 'class_selection_screen.dart';

class FacultyCalendarScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Faculty Calendar')),
      body: Center(
        child: Column(
          children: [
            // Your Calendar widget goes here
            ElevatedButton(
              onPressed: () {
                // Navigate to class selection
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => ClassSelectionScreen()),
                );
              },
              child: Text('Select Class'),
            ),
          ],
        ),
      ),
    );
  }
}
