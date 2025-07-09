import 'package:ecom_app/common/styles/padding.dart';
import 'package:ecom_app/common/widgets/button/elevated_button.dart';
import 'package:ecom_app/common/widgets/button/social_buttons.dart';
import 'package:ecom_app/common/widgets/login_signup/form_divider.dart';
import 'package:ecom_app/features/authentication/screens/login/widgets/login_form.dart';
import 'package:ecom_app/features/authentication/screens/login/widgets/login_header.dart';
import 'package:ecom_app/features/authentication/screens/login/widgets/remember_me.dart';
import 'package:ecom_app/features/authentication/screens/signup/signUp.dart';
import 'package:ecom_app/utils/constants/sizes.dart';
import 'package:ecom_app/utils/constants/texts.dart';
import 'package:ecom_app/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = UHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: UPadding.screenPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              /// Title and Subtitle---///
              ULoginHeader(),
              SizedBox(height: USizes.spaceBtwSections),

              /// [Sign In Forms]---///
              ULoginForm(),

              SizedBox(height: USizes.spaceBtwInputFields / 2),

              /// Remember Me & Forgot Password
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  URememberMeCheckbox(),

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

              SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                  onPressed: () => Get.to(() => SignUpScreen()),
                  child: Text(UTexts.createAccount),
                ),
              ),

              SizedBox(height: USizes.spaceBtwSections),

              /// [Divider]---///
              UFormDivider(dark: dark, title: UTexts.orSignInWith),
              SizedBox(height: USizes.spaceBtwSections),

              ///-----Social Login------///
              USocialButtons(),

              /// [Footer]---///
            ],
          ),
        ),
      ),
    );
  }
}
