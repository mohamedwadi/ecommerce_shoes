

import 'package:flutter/material.dart';

import '../../../../../../common/widget_app/appbar/app_bar.dart';
import '../../../../../../common/widget_app/products_cart/cart_menu_icon.dart';
import '../../../../../../utils/constants/text.dart';

class TAppBarHomeScreen extends StatelessWidget {
  const TAppBarHomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TAppBar(
      action: [
        CartMenuIcon(iconColor: Colors.white, onPressed: () {}),
      ],
      titleAppBar: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            TTexts.titleAppBarHome,
            style: Theme.of(
              context,
            ).textTheme.labelMedium!.apply(color: Colors.grey),
          ),
          Text(
            TTexts.supTitleAppBarHome,
            style: Theme.of(
              context,
            ).textTheme.headlineSmall!.apply(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
