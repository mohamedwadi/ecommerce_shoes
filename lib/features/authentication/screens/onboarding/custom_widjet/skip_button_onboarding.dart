import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import 'package:get/get.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/device/device.dart';
import '../onboarding_controllers/onboarding_controllers.dart';
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
