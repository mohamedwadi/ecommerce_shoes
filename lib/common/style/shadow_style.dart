import 'package:flutter/material.dart';
import 'package:project_ecommerce_shoes_flutter_2025/common/widget_app/image_text/vertical_image_text.dart';
import 'package:project_ecommerce_shoes_flutter_2025/utils/constants/colors.dart';
class TShadowStyle {
  static final verticalProductShadow = BoxShadow(
      color: TColors.darkerGrey.withOpacity(0.1),
    blurRadius: 50,
    spreadRadius: 7,
    offset: const Offset(0, 2)
  );

  static final horizontalProductShadow = BoxShadow(
      color: TColors.darkerGrey.withOpacity(0.1),
    blurRadius: 50,
    spreadRadius: 7,
    offset: const Offset(0, 2)
  );

}