import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project_ecommerce_shoes_flutter_2025/features/authentication/login/screens/login_screen.dart';
import 'package:project_ecommerce_shoes_flutter_2025/utils/constants/images.dart';
import 'package:project_ecommerce_shoes_flutter_2025/utils/constants/sizes.dart';
import 'package:project_ecommerce_shoes_flutter_2025/utils/constants/text.dart';
import 'package:project_ecommerce_shoes_flutter_2025/utils/helpers/helper_functions.dart';
import 'package:get/get.dart';
class VerificationScreen extends StatelessWidget {
  const VerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [
        IconButton(onPressed: () => Get.offAll(const LoginScreen()), icon:Icon(CupertinoIcons.clear))
      ],),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          children: [
            SvgPicture.asset(
            TImages.verificationImage,
              width: THelperFunctions.screenWidth() * 0.8,
            ),
            Text(
              TTexts.verifyTitle,
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: TSizes.spaceBtwItems),
            Text(
              'mohamed@example.com',
              style: Theme.of(context).textTheme.labelLarge,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: TSizes.spaceBtwItems),
            Text(
              TTexts.verifySupTitle,
              style: Theme.of(context).textTheme.labelMedium,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: TSizes.spaceBtwSections),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(TTexts.continueS),
              ),
            ),
            SizedBox(
              child: TextButton(
                onPressed: () {},
                child: Text(TTexts.resendEmail,),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
