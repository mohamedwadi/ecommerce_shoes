import 'package:flutter/material.dart';

import '../../../../../common/widget_app/image_text/vertical_image_text.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/images.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class TCatagoryHomeList extends StatelessWidget {
  const TCatagoryHomeList({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: TSizes.defaultSpace,
      ),
      child: SizedBox(
        height: 90,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: 10,
          itemBuilder: (_, index) {
            return TVerticalImageText(
              title: 'hello word',
              image: TImages.lightAppLogo,
              textColor: TColors.white,
              backgroundColor: TColors.white,
            );
          },
        ),
      ),
    );
  }
}
