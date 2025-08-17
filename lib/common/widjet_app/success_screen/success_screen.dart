import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:project_ecommerce_shoes_flutter_2025/common/style/spacing_style.dart';
import 'package:project_ecommerce_shoes_flutter_2025/features/authentication/screens/login/screens/login_screen.dart';
import '../../../features/authentication/screens/sign/screens/verification_screen.dart';
import '../../../utils/constants/images.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/constants/text.dart';
import '../../../utils/helpers/helper_functions.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key ,required this.textButton ,required this.image , required this.subTitle , required this.title});

  final String title;
  final String subTitle;
  final String image;
  final String textButton;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: TSpacingStyle.paddingWithAppBarHeight,
        child: Column(
          children: [
            SizedBox(height: TSizes.defaultSpace * 2),
            SvgPicture.asset(
              image,
              width: THelperFunctions.screenWidth() * 0.8,
            ),
            Text(
             title,
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: TSizes.spaceBtwItems),
            Text(
              subTitle,
              style: Theme.of(context).textTheme.labelMedium,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: TSizes.spaceBtwSections),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Get.to(() => LoginScreen());
                },
                child: Text(textButton),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
