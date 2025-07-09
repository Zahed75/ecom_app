import 'package:ecom_app/utils/constants/sizes.dart';
import 'package:ecom_app/utils/constants/texts.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ULoginForm extends StatelessWidget {
  const ULoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFormField(
          decoration: InputDecoration(
            prefixIcon: Icon(Iconsax.direct_right),
            labelText: UTexts.email,
          ),
        ),
        SizedBox(height: USizes.spaceBtwInputFields),

        /// Password
        TextFormField(
          decoration: InputDecoration(
            prefixIcon: Icon(Iconsax.direct_right),
            labelText: UTexts.password,
            suffixIcon: Icon(Iconsax.eye),
          ),
        ),
      ],
    );
  }
}
