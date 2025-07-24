import 'package:flutter/material.dart';

class UserFieldNameCard extends StatelessWidget {
  final IconData icon;
  final String fieldName;
  const UserFieldNameCard({super.key, required this.icon, required this.fieldName});

  @override
  Widget build(BuildContext context) {
    return  Padding(
padding: EdgeInsets.only(bottom: 8),
child: Row(
  children: [
    Icon(icon, size:  20, color: Colors.blueGrey),
    SizedBox(width: 8),
    Text(fieldName, style: const TextStyle(fontSize: 16)),
  ],
),
    );
  }
}