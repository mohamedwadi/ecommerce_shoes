import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:project_ecommerce_shoes_flutter_2025/utils/constants/images.dart';

import '../authentication/screens/onboarding/screens/onboarding.dart';


class SplachScreen extends StatelessWidget {
  const SplachScreen({super.key});


  @override
  Widget build(BuildContext context) {

    WidgetsBinding.instance.addPostFrameCallback((_) {
      Future.delayed(Duration(seconds: 2), () {
        Get.to(OnboardingScreen());
      });
    });

    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Image.asset(TImages.spalchAppLogo),
      ),
    );
  }
}
