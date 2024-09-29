import 'package:flutter/material.dart';

const backGroundColor = Colors.blueAccent;
const primaryColor = Colors.white;

class AppStyles {
  static AppBar appBarStyle(String title, {bool? automaticallyImplyLeading}) {
    return AppBar(
      title: Text(
        title,
        style: const TextStyle(
            fontSize: 22, fontWeight: FontWeight.bold, color: primaryColor),
      ),
      centerTitle: true,
      backgroundColor: backGroundColor,
      elevation: 4.0,
      automaticallyImplyLeading: automaticallyImplyLeading ?? true,
    );
  }

  static const TextStyle headingStyle = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: Colors.black87,
  );

  static const TextStyle bodyTextStyle = TextStyle(
    fontSize: 18,
    color: Colors.black54,
  );

  static const EdgeInsets commonPadding = EdgeInsets.all(16.0);

  static ButtonStyle elevatedButtonStyle = ElevatedButton.styleFrom(
    textStyle: const TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.bold,
    ),
    backgroundColor: backGroundColor,
    padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12.0),
    ),
    foregroundColor: primaryColor,
  );
}
