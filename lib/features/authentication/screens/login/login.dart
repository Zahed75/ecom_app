import 'package:ecom_app/common/styles/padding.dart';
import 'package:ecom_app/utils/constants/sizes.dart';
import 'package:ecom_app/utils/constants/texts.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: UPadding.screenPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ///-----Header------///

            /// Title and Subtitle---///
            Column(
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
            ),
            SizedBox(height: USizes.spaceBtwSections),

            /// [Forms]---///
            Column(
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
            ),

            /// [Divider]---///

            /// [Footer]---///
          ],
        ),
      ),
    );
  }
}
