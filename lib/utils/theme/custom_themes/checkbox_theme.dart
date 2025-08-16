import 'package:flutter/material.dart';

class TCheckboxTheme {
  TCheckboxTheme._(); // Constructor private لمنع إنشاء نسخ من الكلاس

  /// ثيم Checkbox للوضع الفاتح (Light Mode)
  static final lightCheckboxTheme = CheckboxThemeData(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(4),
    ),
    checkColor: MaterialStateProperty.resolveWith((states) {
      if (states.contains(MaterialState.selected)) {
        return Colors.white;
      } else {
        return Colors.black;
      }
    }),
    fillColor: MaterialStateProperty.resolveWith((states) {
      if (states.contains(MaterialState.selected)) {
        return Colors.blue;
      } else {
        return Colors.transparent;
      }
    }),
  );

  /// ثيم Checkbox للوضع الداكن (Dark Mode)
  static final darkCheckboxTheme = CheckboxThemeData(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(4),
    ),
    checkColor: MaterialStateProperty.resolveWith((states) {
      if (states.contains(MaterialState.selected)) {
        return Colors.white;
      } else {
        return Colors.white; // تغيير من black إلى white للوضع الداكن
      }
    }),
    fillColor: MaterialStateProperty.resolveWith((states) {
      if (states.contains(MaterialState.selected)) {
        return Colors.blueAccent; // استخدام لون مختلف للوضع الداكن
      } else {
        return Colors.transparent;
      }
    }),
  );
}