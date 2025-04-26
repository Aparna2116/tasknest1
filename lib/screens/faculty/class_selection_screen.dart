import 'package:flutter/material.dart';
import 'class_tasks_screen.dart'; // ✅ Adjust according to your folder

class ClassSelectionScreen extends StatelessWidget {
  const ClassSelectionScreen({Key? key}) : super(key: key);

  final List<String> classes = const ['S4CT', 'S2CS2', 'S6CT'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Select Class')),
      body: ListView.builder(
        itemCount: classes.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(classes[index]),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => ClassTasksScreen(className: classes[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
