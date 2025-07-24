import 'package:flutter/material.dart';
import 'package:training2/model/user_model.dart';
import 'package:training2/widgets/user_field_card.dart';

class UserCard extends StatelessWidget {
  final User user;
  const UserCard({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(mainAxisAlignment: MainAxisAlignment.start,
          children: [
            UserFieldNameCard(icon:Icons.person, fieldName: user.name,),
            UserFieldNameCard(icon:Icons.email, fieldName: user.email,),
            UserFieldNameCard(icon:Icons.phone, fieldName: user.phone,),
            UserFieldNameCard(icon:Icons.web, fieldName: user.website,),
          ],
        ),
      ),
    );
  }
}
