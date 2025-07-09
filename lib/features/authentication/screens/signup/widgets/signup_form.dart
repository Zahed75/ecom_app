import 'package:ecom_app/common/widgets/button/elevated_button.dart';
import 'package:ecom_app/features/authentication/screens/signup/verify_email.dart';
import 'package:ecom_app/utils/constants/colors.dart';
import 'package:ecom_app/utils/constants/sizes.dart';
import 'package:ecom_app/utils/constants/texts.dart';
import 'package:ecom_app/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:iconsax/iconsax.dart';

class USignupForm extends StatelessWidget {
  const USignupForm({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = UHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        Row(
          children: [
            /// First Name
            Expanded(
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: UTexts.firstName,
                  prefixIcon: Icon(Iconsax.user),
                ),
              ),
            ),
            SizedBox(width: USizes.spaceBtwInputFields),

            /// Last Name
            Expanded(
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: UTexts.lastName,
                  prefixIcon: Icon(Iconsax.user),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: USizes.spaceBtwInputFields),

        /// Email
        TextFormField(
          decoration: InputDecoration(
            labelText: UTexts.email,
            prefixIcon: Icon(Iconsax.direct_right),
          ),
        ),
        SizedBox(height: USizes.spaceBtwInputFields),

        /// PhoneNumber
        TextFormField(
          decoration: InputDecoration(
            labelText: UTexts.phoneNumber,
            prefixIcon: Icon(Iconsax.call),
          ),
        ),
        SizedBox(height: USizes.spaceBtwInputFields),

        /// Password
        TextFormField(
          decoration: InputDecoration(
            prefixIcon: Icon(Iconsax.password_check),
            labelText: UTexts.password,
            suffixIcon: Icon(Iconsax.eye),
          ),
        ),
        SizedBox(height: USizes.spaceBtwInputFields),

        /// Agree and Terms
        Row(
          children: [
            Checkbox(value: true, onChanged: (value) {}),
            RichText(
              text: TextSpan(
                style: Theme.of(context).textTheme.bodyMedium,
                children: [
                  TextSpan(text: '${UTexts.iAgreeTo}'),

                  TextSpan(
                    text: ' ${UTexts.privacyPolicy}',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: dark ? UColors.white : UColors.primary,
                      decoration: TextDecoration.underline,
                      decorationColor: dark ? UColors.white : UColors.primary,
                    ),
                  ),
                  TextSpan(
                    text: ' ${UTexts.and}',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(),
                  ),
                  TextSpan(
                    text: ' ${UTexts.termsOfUse}',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: dark ? UColors.white : UColors.primary,
                      decoration: TextDecoration.underline,
                      decorationColor: dark ? UColors.white : UColors.primary,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: USizes.spaceBtwItems / 2),

        UElevatedButton(
          onPressed: () => Get.to(() => VerifyEmailScreen()),
          child: Text(UTexts.createAccount),
        ),
      ],
    );
  }
}
