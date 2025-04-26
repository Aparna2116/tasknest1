import 'package:flutter/material.dart';
import 'screens/student/student_calendar_screen.dart'; // Correct path as needed
import 'screens/faculty/class_selection_screen.dart'; // Correct path as needed

void main() {
  runApp(const TaskNestApp());
}

class TaskNestApp extends StatelessWidget {
  const TaskNestApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TaskNest',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const HomeScreen(), // Make sure this is correct
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Welcome to TaskNest')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton.icon(
              icon: const Icon(Icons.person),
              label: const Text('Student Login'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => StudentCalendarScreen(),
                  ),
                );
              },
            ),
            const SizedBox(height: 20),
            ElevatedButton.icon(
              icon: const Icon(Icons.school),
              label: const Text('Faculty Login'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ClassSelectionScreen(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
