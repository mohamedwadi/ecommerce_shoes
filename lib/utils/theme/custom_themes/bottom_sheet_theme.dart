import 'package:flutter/material.dart';

class TBottomSheetTheme {
  TBottomSheetTheme._(); // Constructor private لمنع إنشاء نسخ من الكلاس

  /// ثيم BottomSheet للوضع الفاتح (Light Mode)
  static const lightBottomSheetTheme = BottomSheetThemeData(
    showDragHandle: true,
    backgroundColor: Colors.white,
    modalBackgroundColor: Colors.white,
    constraints: const BoxConstraints(minWidth: double.infinity),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(16),
      ),
    ),
  );

  /// ثيم BottomSheet للوضع الداكن (Dark Mode)
  static const darkBottomSheetTheme = BottomSheetThemeData(
    showDragHandle: true,
    /// gray colres
    backgroundColor: Color(0xFF212121),
    modalBackgroundColor: Color(0xFF212121),
    constraints: const BoxConstraints(minWidth: double.infinity),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(16),
      ),
    ),
  );
}