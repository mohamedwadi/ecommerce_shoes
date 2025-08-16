import 'package:intl/intl.dart';

/// هذا الملف يحتوي على دوال مساعدة لتنسيق البيانات المختلفة
/// مثل:
/// - تنسيق التاريخ
/// - تنسيق العملات
/// - تنسيق أرقام الهواتف

class Formatter {
  Formatter._(); // Constructor private لمنع إنشاء نسخ من الكلاس

  // ========== تنسيق التاريخ ==========

  /// تنسيق التاريخ إلى صيغة dd-MMM-yyyy
  /// مثال: 25-Aug-2023
  static String formatDate(DateTime? date) {
    date ??= DateTime.now();
    return DateFormat('dd-MMM-yyyy').format(date);
  }

  // ========== تنسيق العملة ==========

  /// تنسيق المبالغ المالية مع رمز العملة
  /// [amount] المبلغ المالي
  /// [locale] اللغة والبلد (افتراضي: en_US)
  /// [symbol] رمز العملة (افتراضي: $)
  static String formatCurrency(double amount, {String locale = 'en_US', String symbol = '\$'}) {
    return NumberFormat.currency(locale: locale, symbol: symbol).format(amount);
  }

  // ========== تنسيق أرقام الهواتف ==========

  /// تنسيق رقم الهاتف المحلي (10 خانات)
  /// مثال: (123) 456-7890
  static String formatPhoneNumber(String phoneNumber) {
    // إزالة أي أحرف غير رقمية
    var digitsOnly = phoneNumber.replaceAll(RegExp(r'\D'), '');

    if (digitsOnly.length == 10) {
      return '(${digitsOnly.substring(0, 3)}) ${digitsOnly.substring(3, 6)}-${digitsOnly.substring(6)}';
    } else if (digitsOnly.length == 11) {
      return '(${digitsOnly.substring(0, 4)}) ${digitsOnly.substring(4, 7)}-${digitsOnly.substring(7)}';
    }

    // إذا لم يتطابق مع أي صيغة، إرجاع الرقم كما هو
    return phoneNumber;
  }

  /// تنسيق رقم الهاتف الدولي
  /// مثال: +20 (123) 456-7890
  static String internationalFormatPhoneNumber(String phoneNumber) {
    // إزالة أي أحرف غير رقمية
    var digitsOnly = phoneNumber.replaceAll(RegExp(r'\D'), '');

    if (digitsOnly.isEmpty) return phoneNumber;

    // استخراج رمز الدولة
    String countryCode = '+${digitsOnly.substring(0, 2)}';
    digitsOnly = digitsOnly.substring(2);

    // بناء الرقم المنسق
    final formattedNumber = StringBuffer();
    formattedNumber.write('$countryCode ');

    int i = 0;
    while (i < digitsOnly.length) {
      int groupLength = 2;
      if (i == 0 && countryCode == '+20') {
        groupLength = 3;
      }

      int end = i + groupLength;
      formattedNumber.write(digitsOnly.substring(i, end));

      if (end < digitsOnly.length) {
        formattedNumber.write('-');
      }
      i = end;
    }

    return formattedNumber.toString();
  }
}