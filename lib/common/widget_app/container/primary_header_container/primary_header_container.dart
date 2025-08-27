import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/helpers/helper_functions.dart';
import '../shape_circle_white/shape_circle_white.dart';

class TPrimaryHeaderContainer extends StatelessWidget {
  const TPrimaryHeaderContainer({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(height: THelperFunctions.screenHeight()),
        Positioned(
          child: Container(
            height: THelperFunctions.screenHeight(),
            decoration: BoxDecoration(
              color: TColors.primary,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
            ),
          ),
        ),
        Positioned(
          top: THelperFunctions.screenHeight() / 2.5,
          bottom: 0,
          right: 0,
          left: 0,
          child: Container(
            decoration: BoxDecoration(
              color: TColors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
            ),
          ),
        ),
        ShapeCircleContainer(
          topPositioned: -THelperFunctions.screenHeight() / 6,
          leftPositioned: THelperFunctions.screenWidth() - 150,
        ),
        ShapeCircleContainer(
          topPositioned: THelperFunctions.screenHeight() / 11,
          leftPositioned: THelperFunctions.screenWidth() - 90,
        ),
        child,
      ],
    );
  }
}
