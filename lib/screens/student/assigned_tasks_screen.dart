import 'package:flutter/material.dart';
import '../../widgets/calendar_button.dart';

class AssignedTasksScreen extends StatelessWidget {
  // Assume you’ll later pass selectedDate and tasks

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Assigned Tasks'),
        actions: [
          CalendarButton(
            onTap: () {
              Navigator.pop(context); // Return to student calendar
            },
          ),
        ],
      ),
      body: Center(
        child: Text('Display assigned tasks for selected date here!'),
      ),
    );
  }
}
