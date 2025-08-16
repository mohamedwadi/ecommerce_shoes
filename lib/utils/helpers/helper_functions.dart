import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

/// هذا الملف يحتوي على دوال مساعدة متنوعة للتطبيق
/// يشمل وظائف للتعامل مع:
/// - الألوان
/// - التنبيهات
/// - التنقل بين الصفحات
/// - معالجة النصوص
/// - التحقق من الوضع الليلي
/// - أبعاد الشاشة
/// - التواريخ
/// - معالجة القوائم

class THelperFunctions {
  THelperFunctions._(); // Constructor private لمنع إنشاء نسخ من الكلاس

  // ========== التعامل مع الألوان ==========

  /// تحويل اسم اللون إلى كائن Color
  static Color? getColor(String value) {
    switch (value.toLowerCase()) {
      case 'green':
        return Colors.green;
      case 'red':
        return Colors.red;
      case 'blue':
        return Colors.blue;
      case 'pink':
        return Colors.pink;
      case 'grey':
        return Colors.grey;
      case 'purple':
        return Colors.purple;
      case 'black':
        return Colors.black;
      case 'white':
        return Colors.white;
      case 'orange':
        return Colors.orange;
      case 'yellow':
        return Colors.yellow;
      case 'teal':
        return Colors.teal;
      default:
        return null;
    }
  }

  // ========== التنبيهات والعروض ==========

  /// عرض SnackBar
  static void showSnackBar(String message) {
    ScaffoldMessenger.of(Get.context!).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }

  /// عرض AlertDialog
  static void showAlert(String title, String message) {
    showDialog(
      context: Get.context!,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Text(message),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }

  // ========== التنقل بين الصفحات ==========

  /// الانتقال إلى صفحة أخرى
  static void navigateToScreen(BuildContext context, Widget screen) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => screen),
    );
  }

  // ========== معالجة النصوص ==========

  /// تقصير النص وإضافة ... إذا تجاوز الطول المحدد
  static String truncateText(String text, int maxLength) {
    if (text.length <= maxLength) {
      return text;
    }
    return '${text.substring(0, maxLength)}...';
  }

  // ========== الوضع الليلي ==========

  /// التحقق إذا كان الوضع الليلي مفعل
  static bool isDarkMode(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark;
  }

  // ========== أبعاد الشاشة ==========

  /// الحصول على حجم الشاشة
  static Size screenSize() {
    return MediaQuery.of(Get.context!).size;
  }

  /// الحصول على ارتفاع الشاشة
  static double screenHeight() {
    return MediaQuery.of(Get.context!).size.height;
  }

  /// الحصول على عرض الشاشة
  static double screenWidth() {
    return MediaQuery.of(Get.context!).size.width;
  }

  // ========== التواريخ ==========

  /// تنسيق التاريخ
  static String getFormattedDate(DateTime date, {String format = 'dd MMM yyyy'}) {
    return DateFormat(format).format(date);
  }

  // ========== معالجة القوائم ==========

  /// إزالة التكرارات من القائمة
  static List<T> removeDuplicates<T>(List<T> list) {
    return list.toSet().toList();
  }

  /// تحويل قائمة Widgets إلى صفوف
  static List<Widget> wrapWidgets(List<Widget> widgets, int rowSize) {
    final wrappedList = <Widget>[];
    for (var i = 0; i < widgets.length; i += rowSize) {
      final end = i + rowSize > widgets.length ? widgets.length : i + rowSize;
      final rowChildren = widgets.sublist(i, end);
      wrappedList.add(Row(children: rowChildren));
    }
    return wrappedList;
  }
}