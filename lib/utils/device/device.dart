import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'dart:io';
import 'dart:async';
import 'package:http/http.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher.dart';

/// هذا الملف يحتوي على أدوات مساعدة للتعامل مع خصائص الجهاز
/// يوفر وظائف مثل:
/// - إدارة لوحة المفاتيح
/// - إدارة شريط الحالة
/// - معلومات الشاشة
/// - الاهتزاز
/// - الإنترنت
/// - إدارة الاتجاه

class TDeviceUtils {
  TDeviceUtils._(); // Constructor private لمنع إنشاء نسخ من الكلاس

  // ========== لوحة المفاتيح ==========


  /// إخفاء لوحة المفاتيح
  static void hideKeyboard(BuildContext context) {
    FocusScope.of(context).requestFocus(FocusNode());
  }

  /// التحقق من ظهور لوحة المفاتيح
  static Future<bool> isKeyboardVisible() async {
    final viewInsets = MediaQuery.of(Get.context!).viewInsets;
    return viewInsets.bottom > 0;
  }

  /// الحصول على ارتفاع لوحة المفاتيح
  static double getKeyboardHeight() {
    final viewInsets = MediaQuery.of(Get.context!).viewInsets;
    return viewInsets.bottom;
  }

  // ========== شريط الحالة ==========

  /// تغيير لون شريط الحالة
  static Future<void> setStatusBarColor(Color color) async {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: color),
    );
  }

  /// إخفاء شريط الحالة
  static void hideStatusBar() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
  }

  /// إظهار شريط الحالة
  static void showStatusBar() {
    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.manual,
      overlays: SystemUiOverlay.values,
    );
  }

  /// الحصول على ارتفاع شريط الحالة
  static double getStatusBarHeight() {
    return MediaQuery.of(Get.context!).padding.top;
  }
  static double getBottomNavigationHeight() {

    return kBottomNavigationBarHeight;
  }

  static double getAppBarHeight() {
    return kToolbarHeight;
  }

  // ========== الشاشة ==========

  /// الحصول على ارتفاع الشاشة
  static double getScreenHeight() {
    return MediaQuery.of(Get.context!).size.height;
  }

  /// الحصول على عرض الشاشة
  static double getScreenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  /// التحقق من الاتجاه الأفقي
  static bool isLandscapeOrientation(BuildContext context) {
    return MediaQuery.of(context).orientation == Orientation.landscape;
  }

  /// التحقق من الاتجاه العمودي
  static bool isPortraitOrientation(BuildContext context) {
    return MediaQuery.of(context).orientation == Orientation.portrait;
  }

  /// وضع الشاشة الكاملة
  static void setFullScreen(bool enable) {
    SystemChrome.setEnabledSystemUIMode(
      enable ? SystemUiMode.immersiveSticky : SystemUiMode.edgeToEdge,
    );
  }

  // ========== الجهاز ==========

  /// التحقق من نظام iOS
  static bool isIOS() {
    return Platform.isIOS;
  }

  /// التحقق من نظام Android
  static bool isAndroid() {
    return Platform.isAndroid;
  }

  /// التحقق من وجود اتصال بالإنترنت
  static Future<bool> hasInternetConnection() async {
    try {
      final result = await InternetAddress.lookup('example.com');
      return result.isNotEmpty && result[0].rawAddress.isNotEmpty;
    } on SocketException catch (_) {
      return false;
    }
  }

  // ========== أخرى ==========

  /// تشغيل الاهتزاز
  static void vibrate(Duration duration) {
    HapticFeedback.vibrate();
    Future.delayed(duration, () => HapticFeedback.vibrate());
  }

}