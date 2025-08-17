import 'package:flutter/cupertino.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/device/device.dart';
import '../../../../../utils/helpers/helper_functions.dart';
import '../onboarding_controllers/onboarding_controllers.dart';


class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });


  @override
  Widget build(BuildContext context){
    final isDark = THelperFunctions.isDarkMode(context);
    return Positioned(
      left: TSizes.defaultSpace,
      bottom: TDeviceUtils.getBottomNavigationHeight() + 25,
      child: SmoothPageIndicator(
        controller: OnBoardingControllers.instance.pageController,
        onDotClicked: OnBoardingControllers.instance.dotNavigationClick,
        count: 3,
        effect: ExpandingDotsEffect(
          activeDotColor: isDark ? TColors.primary : TColors.dark,
          dotHeight: 6,
          dotWidth: 12,
        ),
      ),
    );
  }
}
