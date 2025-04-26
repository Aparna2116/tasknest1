import 'package:flutter/material.dart';
import '../../widgets/calendar_button.dart';

class ClassTasksScreen extends StatelessWidget {
  final String className;

  ClassTasksScreen({required this.className});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tasks for $className'),
        actions: [
          CalendarButton(
            onTap: () {
              Navigator.pop(context); // Back to class selection or calendar
            },
          ),
        ],
      ),
      body: Center(child: Text('Display tasks assigned to $className here!')),
    );
  }
}
