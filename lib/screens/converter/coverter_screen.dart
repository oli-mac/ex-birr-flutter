import 'package:ex_birr/config/navigation.dart';
import 'package:flutter/material.dart';

class CoverterScreen extends StatelessWidget implements NavigationStates {
  const CoverterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "CoverterScreen",
        style: TextStyle(fontWeight: FontWeight.w900, fontSize: 28),
      ),
    );
  }
}