import 'package:ex_birr/config/navigation.dart';
import 'package:flutter/material.dart';

class ExchangeScreen extends StatelessWidget implements NavigationStates {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "ExchangeScreen",
        style: TextStyle(fontWeight: FontWeight.w900, fontSize: 28),
      ),
    );
  }
}