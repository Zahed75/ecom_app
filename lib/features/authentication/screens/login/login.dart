import 'package:ecom_app/common/styles/padding.dart';
import 'package:ecom_app/common/widgets/button/elevated_button.dart';
import 'package:ecom_app/utils/constants/colors.dart';
import 'package:ecom_app/utils/constants/images.dart';
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

            /// [Sign In Forms]---///
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
            SizedBox(height: USizes.spaceBtwInputFields / 2),

            /// Remember Me & Forgot Password
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value) {}),
                    Text(UTexts.rememberMe),
                  ],
                ),

                /// ForgetPassword
                TextButton(
                  onPressed: () {},
                  child: Text(UTexts.forgetPassword),
                ),
              ],
            ),
            SizedBox(height: USizes.spaceBtwSections),

            ///------Sign In------///
            UElevatedButton(onPressed: () {}, child: Text(UTexts.signIn)),

            SizedBox(height: USizes.spaceBtwItems / 3),

            UElevatedButton(
              onPressed: () {},
              child: Text(UTexts.createAccount),
            ),

            SizedBox(height: USizes.spaceBtwSections),

            /// [Divider]---///
            Row(
              children: [
                Expanded(
                  child: Divider(indent: 50, endIndent: 5, thickness: 0.5),
                ),
                Text(
                  UTexts.orSignInWith,
                  style: Theme.of(context).textTheme.labelMedium,
                ),
                Expanded(child: Divider(indent: 5, endIndent: 60)),
              ],
            ),
            SizedBox(height: USizes.spaceBtwSections),

            ///-----Social Login------///
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: UColors.grey),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      UImages.googleIcon,
                      height: USizes.iconMd,
                      width: USizes.iconMd,
                    ),
                  ),
                ),

                SizedBox(width: USizes.spaceBtwSections),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: UColors.grey),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      UImages.facebookIcon,
                      height: USizes.iconMd,
                      width: USizes.iconMd,
                    ),
                  ),
                ),
              ],
            ),

            /// [Footer]---///
          ],
        ),
      ),
    );
  }
}
