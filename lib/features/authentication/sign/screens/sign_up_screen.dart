import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_ecommerce_shoes_flutter_2025/common/style/spacing_style.dart';
import 'package:project_ecommerce_shoes_flutter_2025/utils/constants/sizes.dart';
import 'package:project_ecommerce_shoes_flutter_2025/utils/constants/text.dart';
import 'package:project_ecommerce_shoes_flutter_2025/utils/helpers/helper_functions.dart';

import '../../../../common/widjet_app/login_sign_up_screen/divider_middle_text.dart';
import '../../../../common/widjet_app/login_sign_up_screen//footer_social_media.dart';
import '../custom_widjet/form_sign_up.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isdark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(TTexts.signUpTitle ,style: Theme.of(context).textTheme.headlineMedium,),
              SizedBox(height: TSizes.spaceBtwSections),
              FormSignUP(),
              SizedBox(height: TSizes.spaceBtwSections),
              DividerMiddleText(textMiddle: TTexts.orSignWith.capitalize!),
              SizedBox(height: TSizes.spaceBtwItems),
              FooterSocialMedia(),
            ],
          ),
        ),
      ),
    );
  }
}




