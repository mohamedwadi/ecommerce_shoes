import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:project_ecommerce_shoes_flutter_2025/features/authentication/sign/screens/verification_screen.dart';
import 'package:project_ecommerce_shoes_flutter_2025/utils/constants/colors.dart';
import 'package:project_ecommerce_shoes_flutter_2025/utils/helpers/helper_functions.dart';

import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text.dart';
import 'package:get/get.dart';

class FormSignUP extends StatelessWidget {
  const FormSignUP({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    return Form(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Iconsax.user),
                    labelText: TTexts.firstName,
                  ),
                ),
              ),
              SizedBox(width: TSizes.spaceBtwInputFields),
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Iconsax.user),
                    labelText: TTexts.lastName,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: TSizes.spaceBtwInputFields),
          TextFormField(
            decoration: InputDecoration(
              prefixIcon: Icon(Iconsax.direct_right),
              labelText: TTexts.email,
            ),
          ),
          SizedBox(height: TSizes.spaceBtwInputFields),
          TextFormField(
            decoration: InputDecoration(
              prefixIcon: Icon(Iconsax.call),
              labelText: TTexts.phoneNumber,
            ),
          ),
          SizedBox(height: TSizes.spaceBtwInputFields),
          TextFormField(
            decoration: InputDecoration(
              suffixIcon: Icon(Iconsax.eye_slash),
              prefixIcon: Icon(Iconsax.password_check),
              labelText: TTexts.password,
            ),
          ),

          SizedBox(height: TSizes.spaceBtwInputFields / 2),
          Row(
            children: [
              SizedBox(
                height: 24,
                width: 24,
                child: Checkbox(value: true, onChanged: (value) {}),
              ),
              SizedBox(width: TSizes.spaceBtwItems),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: TTexts.isAgree,
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    TextSpan(
                      text: TTexts.privacyPolicy,
                      style: Theme.of(context).textTheme.bodyMedium!.apply(
                        color: isDark ? TColors.white : TColors.primary,
                        decoration: TextDecoration.underline,
                        decorationColor: isDark
                            ? TColors.white
                            : TColors.primary,
                      ),
                    ),
                    TextSpan(
                      text: TTexts.and,
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    TextSpan(
                      text: TTexts.termsOfUse,
                      style: Theme.of(context).textTheme.bodyMedium!.apply(
                        color: isDark ? TColors.white : TColors.primary,
                        decoration: TextDecoration.underline,
                        decorationColor: isDark
                            ? TColors.white
                            : TColors.primary,
                      ),
                    ),

                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: TSizes.spaceBtwSections),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                Get.to(VerificationScreen());
              },
              child: Text(TTexts.createAccountButton),
            ),
          ),
        ],
      ),
    );
  }
}
