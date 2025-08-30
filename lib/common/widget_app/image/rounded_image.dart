import 'package:flutter/material.dart';

class TRoundedImage extends StatelessWidget {
  const TRoundedImage({
    super.key,
    this.backgroundColor,
    this.fit,
    this.isBorderImage = false,
    this.isNetworkImage = false,
    required this.image,
    this.height,
    this.width,
    this.borderRadius = 0,
    this.onTap,
    this.margin = 0
  });

  final Color? backgroundColor;
  final BoxFit? fit;
  final bool isBorderImage, isNetworkImage;
  final String image;
  final double? height, width;
  final double borderRadius;
  final VoidCallback? onTap;
  final double margin;



  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        margin: EdgeInsets.only(left: margin),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius),
          color: backgroundColor,
        ),
        child: ClipRRect(
          borderRadius: isBorderImage
              ? BorderRadius.circular(borderRadius)
              : BorderRadius.zero,
          child: Image(
            image: isNetworkImage
                ? NetworkImage(image)
                : AssetImage(image) as ImageProvider,
            fit: fit,
          ),
        ),
      ),
    );
  }
}
