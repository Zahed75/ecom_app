import 'package:ecom_app/utils/constants/sizes.dart';
import 'package:ecom_app/utils/constants/texts.dart';
import 'package:flutter/material.dart';

class ULoginHeader extends StatelessWidget {
  const ULoginHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          UTexts.loginTitle,
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        SizedBox(height: USizes.sm),
        Text(
          UTexts.loginSubTitle,
          style: Theme.of(context).textTheme.bodySmall,
        ),
      ],
    );
  }
}
