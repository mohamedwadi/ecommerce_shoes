/// ملف مسؤول عن تخزين جميع مسارات الصور المستخدمة في التطبيق
/// يتم استدعاء الصور عبر هذه الفئة بدلاً من كتابة المسارات يدوياً
///
/// مثال للاستخدام:
/// Image.asset(TImages.lightAppLogo)
class TImages {
  // -- شعارات التطبيق
  static const String darkAppLogo = "assets/images/logo_dark.png";
  static const String lightAppLogo = "assets/images/logo_light.png";
  static const String spalchAppLogo = "assets/images/logo.png";


  // -- شعارات مواقع التواصل الاجتماعي
  static const String google = "assets/images/google_icon.png";
  static const String facebook = "assets/images/facebook_icon.png";

  // -- صور صفحات التعريف بالتطبيق (OnBoarding)
  static const String onBoardingImage1 = "assets/images/onBoarding1.svg";
  static const String onBoardingImage2 = "assets/images/onBoarding2.svg";
  static const String onBoardingImage3 = "assets/images/onBoarding3.svg";
  static const String verificationImage = "assets/images/verification.svg";
  static const String registrationSuccess = "assets/images/registration.svg";



// -- صور المنتجات (يمكن إضافتها لاحقاً)
// static const String product1 = "assets/images/products/product1.png";

// -- صور المستخدمين
// static const String userProfile = "assets/images/users/user_profile.png";
}