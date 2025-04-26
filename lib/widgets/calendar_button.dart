import 'package:flutter/material.dart';

class CalendarButton extends StatelessWidget {
  final VoidCallback onTap;

  CalendarButton({required this.onTap});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.calendar_today, color: Colors.indigo),
      onPressed: onTap,
    );
  }
}
