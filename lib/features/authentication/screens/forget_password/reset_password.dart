import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../common/style/spacing_style.dart';
import '../../../../utils/constants/images.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text.dart';
import '../../../../utils/helpers/helper_functions.dart';
import '../sign/screens/verification_screen.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [
        IconButton(onPressed: () => Get.back(), icon:Icon(CupertinoIcons.clear))
      ],),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          children: [
            // SizedBox(height: TSizes.defaultSpace * 2),
            SvgPicture.asset(
              TImages.resetPassword,
              width: THelperFunctions.screenWidth() * 0.8,
            ),
            Text(
              TTexts.resetPasswordTitle,
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: TSizes.spaceBtwItems),
            Text(
              TTexts.resetPasswordSupTitle,
              style: Theme.of(context).textTheme.labelMedium,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: TSizes.spaceBtwSections),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Get.to(() => ());
                },
                child: Text(TTexts.submit),
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
