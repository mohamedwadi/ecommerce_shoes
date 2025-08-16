import 'package:flutter/material.dart';

class TChipTheme {
  TChipTheme._(); // Constructor private لمنع إنشاء نسخ من الكلاس

  /// ثيم Chips للوضع الفاتح (Light Mode)
  static final lightChipTheme = ChipThemeData(
    disabledColor: Colors.grey.withOpacity(0.4),
    labelStyle: const TextStyle(color: Colors.black),
    selectedColor: Colors.blue,
    padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
    checkmarkColor: Colors.white,
    secondaryLabelStyle: const TextStyle(color: Colors.white),
    brightness: Brightness.light,
  );

  /// ثيم Chips للوضع الداكن (Dark Mode)
  static final darkChipTheme = ChipThemeData(
    disabledColor: Colors.grey.withOpacity(0.6),
    labelStyle: const TextStyle(color: Colors.white),
    selectedColor: Colors.blueAccent,
    padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
    checkmarkColor: Colors.white,
    secondaryLabelStyle: const TextStyle(color: Colors.black),
    brightness: Brightness.dark,
  );
}