import 'package:ex_birr/config/navigation.dart';
import 'package:flutter/material.dart';

class AnalyticsScreen extends StatelessWidget implements NavigationStates {
  const AnalyticsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "AnalyticsScreen",
        style: TextStyle(fontWeight: FontWeight.w900, fontSize: 28),
      ),
    );;
  }
}
