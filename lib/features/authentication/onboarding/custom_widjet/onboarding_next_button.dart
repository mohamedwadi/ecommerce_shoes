import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:project_ecommerce_shoes_flutter_2025/features/authentication/onboarding/onboarding_controllers/onboarding_controllers.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/device/device.dart';
import '../../../../utils/helpers/helper_functions.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    return Positioned(
      bottom: TDeviceUtils.getBottomNavigationHeight(),
      right: TSizes.defaultSpace,
      child: ElevatedButton(
        onPressed: () => OnBoardingControllers.instance.nextPage(),
        child: Icon(Iconsax.arrow_right_3),
        style: ElevatedButton.styleFrom(
          shape: CircleBorder(),
          backgroundColor: isDark ? TColors.primary : TColors.black,
        ),
      ),
    );
  }
}
