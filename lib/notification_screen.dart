import 'package:flutter/material.dart';
import 'package:matule/cards/notification_card.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<int> array = [1,1,1,1,1,1,1,1,1,1,1];
    return Scaffold(
      backgroundColor: Colors.white,
      body: Align(
        child: SingleChildScrollView(
          child: Column(
            children: array.map((toElement) {
              return NotificationCard();
            }).toList(),
          ),
        ),
      ),
    );
  }
}
