import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:project_ecommerce_shoes_flutter_2025/utils/constants/colors.dart';
import 'package:project_ecommerce_shoes_flutter_2025/utils/constants/images.dart';
import 'package:project_ecommerce_shoes_flutter_2025/utils/constants/sizes.dart';
import 'package:project_ecommerce_shoes_flutter_2025/utils/constants/text.dart';
import 'package:project_ecommerce_shoes_flutter_2025/utils/device/device.dart';
import 'package:project_ecommerce_shoes_flutter_2025/utils/helpers/helper_functions.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:iconsax/iconsax.dart';

import '../custom_widjet/on_boarding_dot_navagition.dart';
import '../custom_widjet/onboarding_page.dart';
import '../custom_widjet/onboarding_next_button.dart';
import '../custom_widjet/skip_button_onboarding.dart';
import 'package:get/get.dart';

import '../onboarding_controllers/onboarding_controllers.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    final pageController = Get.put(OnBoardingControllers());
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: pageController.pageController,
            onPageChanged: pageController.updatePageIndicator,
            children: [
              OnBoardingPage(
                image: TImages.onBoardingImage1,
                title: TTexts.onBoardingTitle1,
                supTitle: TTexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: TImages.onBoardingImage2,
                title: TTexts.onBoardingTitle2,
                supTitle: TTexts.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: TImages.onBoardingImage3,
                title: TTexts.onBoardingTitle3,
                supTitle: TTexts.onBoardingSubTitle3,
              ),
            ],
          ),
          SkipButtonOnboarding(),
          OnBoardingDotNavigation(),
          OnBoardingNextButton(),
        ],
      ),
    );
  }
}

