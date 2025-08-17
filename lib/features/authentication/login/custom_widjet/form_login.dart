import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:project_ecommerce_shoes_flutter_2025/features/authentication/sign/screens/sign_up_screen.dart';

import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text.dart';
import 'package:get/get.dart';

class FormLogin extends StatelessWidget {
  const FormLogin({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(
              prefixIcon: Icon(Iconsax.direct_right),
              labelText: TTexts.email,
            ),
          ),
          SizedBox(height: TSizes.spaceBtwInputFields),
          TextFormField(
            decoration: InputDecoration(
              prefixIcon: Icon(Iconsax.password_check),
              labelText: TTexts.password,
            ),
          ),
          SizedBox(height: TSizes.spaceBtwInputFields / 2),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Checkbox(value: true, onChanged: (value) {}),
                  Text(TTexts.rememberMe),
                ],
              ),
              TextButton(
                onPressed: () {},
                child: Text(TTexts.forgetPassword),
              ),
            ],
          ),
          SizedBox(height: TSizes.spaceBtwItems),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              child: Text(TTexts.loginButton),
            ),
          ),
          SizedBox(height: TSizes.spaceBtwItems),
          SizedBox(
            width: double.infinity,
            child: OutlinedButton(
              onPressed: () {
                Get.to(SignUpScreen());
              },
              child: Text(TTexts.createAccountButton),
            ),
          ),
        ],
      ),
    );
  }
}
