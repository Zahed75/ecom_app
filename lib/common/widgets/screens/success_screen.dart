import 'package:ecom_app/common/styles/padding.dart';
import 'package:ecom_app/common/widgets/button/elevated_button.dart';
import 'package:ecom_app/utils/constants/images.dart';
import 'package:ecom_app/utils/constants/sizes.dart';
import 'package:ecom_app/utils/constants/texts.dart';
import 'package:ecom_app/utils/helpers/device_helpers.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({
    super.key,
    required this.title,
    required this.subTitle,
    required this.image,
    required this.onTap,
  });

  final String title, subTitle, image;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(automaticallyImplyLeading: false),
      body: SingleChildScrollView(
        child: Padding(
          padding: UPadding.screenPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                image,
                height: UDeviceHelper.getScreenWidth(context) * 0.6,
              ),
              SizedBox(height: USizes.spaceBtwItems),
              Text(
                title,
                style: Theme.of(context).textTheme.headlineSmall,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: USizes.spaceBtwItems),
              Text(
                'example@gmail.com',
                style: Theme.of(context).textTheme.bodySmall,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: USizes.spaceBtwItems),
              Text(
                subTitle,
                style: Theme.of(context).textTheme.bodySmall,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: USizes.spaceBtwSections),
              UElevatedButton(onPressed: onTap, child: Text(UTexts.uContinue)),
            ],
          ),
        ),
      ),
    );
  }
}
