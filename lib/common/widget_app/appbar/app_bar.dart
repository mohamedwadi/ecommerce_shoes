import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:project_ecommerce_shoes_flutter_2025/utils/device/device.dart';

import '../../../utils/constants/sizes.dart';
import 'package:get/get.dart';

class TAppBar extends StatelessWidget implements PreferredSizeWidget {
  const TAppBar({
    super.key,
    this.titleAppBar,
    this.showBackArrow = false,
    this.leadingIcon,
    required this.action,
    this.leadingOnPress,
  });

  final Widget? titleAppBar;
  final bool showBackArrow;
  final IconData? leadingIcon;
  final List<Widget> action;
  final VoidCallback? leadingOnPress;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: TSizes.fontSizeMd),
      child: AppBar(
        actions: action,
        title: titleAppBar,
        leading: showBackArrow
            ? IconButton(
                onPressed: () => Get.back(),
                icon: Icon(Iconsax.arrow_left),
              )
            : leadingIcon != null
            ? IconButton(onPressed: leadingOnPress, icon: Icon(leadingIcon))
            : null,
      ),
    );
  }

    // warning you need understand this function
  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(TDeviceUtils.getAppBarHeight());
}
