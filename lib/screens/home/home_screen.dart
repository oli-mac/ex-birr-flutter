import 'package:ex_birr/config/navigation.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget implements NavigationStates {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Text(
        "HomePage",
        style: TextStyle(fontWeight: FontWeight.w900, fontSize: 28),
      ),
    );
  }
}
