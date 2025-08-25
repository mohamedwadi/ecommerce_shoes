import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/helpers/helper_functions.dart';

class ShapeCircleWhite extends StatelessWidget {
  const ShapeCircleWhite({
    super.key,
    required this.topPositioned,
    required this.leftPositioned,
  });

  final topPositioned;
  final leftPositioned;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: topPositioned,
      left: leftPositioned,
      child: Container(
        width: THelperFunctions.screenHeight() / 2.5,
        height: THelperFunctions.screenHeight() / 2.5,
        decoration: BoxDecoration(
          color: TColors.textWhite.withOpacity(0.1),
          borderRadius: BorderRadius.circular(500),
        ),
      ),
    );
  }
}
