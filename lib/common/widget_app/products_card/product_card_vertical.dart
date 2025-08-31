import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:project_ecommerce_shoes_flutter_2025/common/widget_app/container/rounded_container/circular_container_dot.dart';
import 'package:project_ecommerce_shoes_flutter_2025/common/widget_app/icons/circular_icon/circular_icon.dart';
import 'package:project_ecommerce_shoes_flutter_2025/common/widget_app/image/rounded_image.dart';
import 'package:project_ecommerce_shoes_flutter_2025/utils/constants/colors.dart';
import 'package:project_ecommerce_shoes_flutter_2025/utils/constants/sizes.dart';
import 'package:project_ecommerce_shoes_flutter_2025/utils/helpers/helper_functions.dart';

import '../../style/shadow_style.dart';
import '../text/prouduct_title_text.dart';

class TProductCardVertical extends StatelessWidget {
  const TProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    return Container(
      width: 180,
      padding: EdgeInsets.all(1),
      decoration: BoxDecoration(
        boxShadow: [TShadowStyle.verticalProductShadow],
        borderRadius: BorderRadius.circular(TSizes.productImageRadius),
        color: isDark ? TColors.darkerGrey : TColors.white,
      ),
      child: Column(
        children: [
          TRoundedContainer(
            height: 180,
            padding: EdgeInsets.all(TSizes.sm),
            backgroundColor: isDark ? TColors.dark : TColors.light,
            child: Stack(
              children: [
                TRoundedImage(
                  image: 'assets/images/test1.png',
                  isBorderImage: true,
                ),
                Positioned(
                  child:TRoundedContainer(
                    radius: TSizes.sm,
                    backgroundColor: TColors.secondary.withOpacity(0.8),
                    padding: EdgeInsets.symmetric(
                      horizontal: TSizes.sm,
                      vertical: TSizes.xs,
                    ),
                    child:Text(
                      '25%',
                      style: Theme.of(context).textTheme.labelLarge!.apply(
                          color: TColors.black,
                        ),
                      ),
                    ),
                  ),
                Positioned(
                    top: 0,
                    right: 0,
                    child: TCircularIcon(icon: Iconsax.heart5,color: Colors.red,)
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: TSizes.sm),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TProductTitleText(
                  title: 'Green Nike Air Shoes',
                  smallSize: true,
                ),
                SizedBox(height: TSizes.spaceBtwItems / 2,),
                Row(
                  children: [
                    Text(
                      'Nike',
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                    const SizedBox(width: TSizes.xs), // Assuming TSizes.xs is 4.0
                    const Icon(Iconsax.verify5, color: TColors.primary, size: TSizes.iconXs), // Assuming primary color and icon size
                  ],
                ),
                Row(
                  children: [
                    // Price
                    Text(
                      '\$135.5',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    Spacer(),
                    // Add to cart button
                    Container(
                      decoration: const BoxDecoration(
                        color: TColors.dark, // Assuming TColors.dark is black
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(TSizes.cardRadiusMd), // Assuming TSizes.cardRadiusMd is 8.0
                          bottomRight: Radius.circular(TSizes.productImageRadius), // Assuming TSizes.productImageRadius is 16.0
                        ),
                      ),
                      child: SizedBox(
                          width: TSizes.iconLg * 1.2,
                          height: TSizes.iconLg * 1.2,
                          child: Center(child: const Icon(Iconsax.add, color: Colors.white))),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}



