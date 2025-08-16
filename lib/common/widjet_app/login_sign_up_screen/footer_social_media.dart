import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_ecommerce_shoes_flutter_2025/utils/constants/colors.dart';
import 'package:project_ecommerce_shoes_flutter_2025/utils/constants/images.dart';
import 'package:project_ecommerce_shoes_flutter_2025/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class FooterSocialMedia extends StatelessWidget {
  const FooterSocialMedia({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: TColors.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: () {},
            icon: Image(
              image: AssetImage(TImages.google),
              height: TSizes.iconMd,
              width: TSizes.iconMd,
            ),
          ),
        ),
        SizedBox(width: TSizes.spaceBtwItems),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: TColors.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: () {},
            icon: Image(
              image: AssetImage(TImages.facebook),
              height: TSizes.iconMd,
              width: TSizes.iconMd,
            ),
          ),
        ),
      ],
    );
  }
}
