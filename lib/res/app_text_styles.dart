import 'package:flutter/material.dart';

class AppTextStyles {
  static const String _fontFamily = 'SourceCodePro';

  // Heading 1: 28/34.4
  static const TextStyle heading1 = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 28,
    height: 34.4 / 28,
    fontWeight: FontWeight.w700, // Assuming Bold for Headings
    color: Colors.black,
  );

  // Heading 2: 24/34.4
  static const TextStyle heading2 = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 24,
    height: 34.4 / 24,
    fontWeight: FontWeight.w700,
    color: Colors.black,
  );

  // Heading 3: 18/24.4 (Matches your "Edit text style" panel)
  static const TextStyle heading3 = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 18,
    height: 24.4 / 18,
    fontWeight: FontWeight.w400, // Regular as shown in dropdown
    color: Colors.black,
  );

  // Header 1 (Elite team library): 34/Auto
  static const TextStyle eliteHeader1 = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 34,
    fontWeight: FontWeight.w700,
    color: Colors.black,
  );

  // Header 2 (Elite team library): 20/Auto
  static const TextStyle eliteHeader2 = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 20,
    fontWeight: FontWeight.w700,
    color: Colors.black,
  );

  // Button Text: 14/Auto
  static const TextStyle buttonText = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 14,
    fontWeight: FontWeight.w600, // SemiBold is standard for buttons
    color: Colors.black,
  );

  // Body: 13/Auto
  static const TextStyle body = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 13,
    fontWeight: FontWeight.w400,
    color: Colors.black,
  );
}
