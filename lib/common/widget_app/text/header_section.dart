import 'package:flutter/material.dart';

class THeaderSection extends StatelessWidget {
  const THeaderSection({
    super.key,
    this.showButton = false,
    required this.title,
    this.textColor,
    this.onTapButton,
    this.texButton = "View all",
  });

  final String title, texButton;
  final Color? textColor;
  final bool showButton;
  final void Function()? onTapButton;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(
            context,
          ).textTheme.headlineSmall!.apply(color: textColor),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        if (showButton)
          TextButton(onPressed: onTapButton, child: Text(texButton)),
      ],
    );
  }
}
