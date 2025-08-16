/// هذا الملف يحتوي على دوال لحساب الأسعار والتكاليف المرتبطة بالمنتجات
/// يشمل:
/// - حساب السعر الإجمالي (سعر المنتج + الضريبة + الشحن)
/// - حساب تكلفة الشحن
/// - حساب قيمة الضريبة
/// - حساب إجمالي سعر السلة

class PricingCalculator {
  PricingCalculator._(); // Constructor private لمنع إنشاء نسخ من الكلاس

  // ========== حساب السعر الإجمالي ==========

  /// حساب السعر الإجمالي للمنتج (يشمل الضريبة والشحن)
  /// [productPrice] سعر المنتج الأساسي
  /// [location] الموقع لتحديد معدل الضريبة وتكلفة الشحن
  static double calculateTotalPrice(double productPrice, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;
    double shippingCost = getShippingCost(location);

    double totalPrice = productPrice + taxAmount + shippingCost;
    return totalPrice;
  }

  // ========== حساب تكلفة الشحن ==========

  /// حساب تكلفة الشحن مع التنسيق
  /// [productPrice] سعر المنتج (قد يؤثر على الشحن المجاني)
  /// [location] الموقع لتحديد تكلفة الشحن
  static String calculateShippingCost(double productPrice, String location) {
    double shippingCost = getShippingCost(location);

    // تطبيق الشحن المجاني إذا تجاوز سعر المنتج حداً معيناً
    if (productPrice > 100) { // مثال: شحن مجاني للطلبات فوق 100
      return '0.00';
    }

    return shippingCost.toStringAsFixed(2);
  }

  // ========== حساب الضريبة ==========

  /// حساب قيمة الضريبة مع التنسيق
  /// [productPrice] سعر المنتج الأساسي
  /// [location] الموقع لتحديد معدل الضريبة
  static String calculateTax(double productPrice, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;
    return taxAmount.toStringAsFixed(2);
  }

  // ========== دوال مساعدة ==========

  /// الحصول على معدل الضريبة حسب الموقع
  /// [location] الموقع لتحديد معدل الضريبة
  static double getTaxRateForLocation(String location) {
    // في التطبيق الحقيقي، يتم جلب هذه البيانات من قاعدة بيانات أو API
    switch (location.toLowerCase()) {
      case 'us':
      case 'usa':
        return 0.08; // 8% ضريبة
      case 'uk':
        return 0.20; // 20% ضريبة
      case 'sa': // السعودية
      case 'uae': // الإمارات
        return 0.05; // 5% ضريبة
      default:
        return 0.10; // 10% افتراضياً
    }
  }

  /// الحصول على تكلفة الشحن حسب الموقع
  /// [location] الموقع لتحديد تكلفة الشحن
  static double getShippingCost(String location) {
    // في التطبيق الحقيقي، يتم جلب هذه البيانات من قاعدة بيانات أو API
    switch (location.toLowerCase()) {
      case 'us':
        return 5.00; // 5 دولار
      case 'uk':
        return 10.00; // 10 جنيه
      case 'sa': // السعودية
      case 'uae': // الإمارات
        return 15.00; // 15 ريال/درهم
      default:
        return 7.00; // 7 دولار افتراضياً
    }
  }

// ========== حساب سعر السلة ==========

/// حساب إجمالي سعر السلة (للمثال فقط - تحتاج لتعديله حسب نموذج السلة الخاص بك)
/*
  static double calculateCartTotal(CartModel cart) {
    return cart.items
      .map((e) => e.price * e.quantity)
      .fold(0, (previousPrice, currentPrice) => previousPrice + currentPrice);
  }
  */
}