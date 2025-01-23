import 'package:ex_birr/config/navigation.dart';
import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget implements NavigationStates {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "SettingScreen",
        style: TextStyle(fontWeight: FontWeight.w900, fontSize: 28),
      ),
    );
  }
}
