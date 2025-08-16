import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_ecommerce_shoes_flutter_2025/features/authentication/onboarding/onboarding_controllers/onboarding_controllers.dart';

import '../../../../utils/constants/sizes.dart';
import '../../../../utils/device/device.dart';
import 'package:get/get.dart';
class SkipButtonOnboarding extends StatelessWidget {
  const SkipButtonOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      child: TextButton(onPressed: () => OnBoardingControllers.instance.skipPage(), child: Text('skip')),
      top: TDeviceUtils.getAppBarHeight(),
      right: TSizes.defaultSpace,
    );
  }
}
