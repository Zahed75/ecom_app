import 'package:ecom_app/utils/constants/images.dart';
import 'package:ecom_app/utils/constants/sizes.dart';
import 'package:ecom_app/utils/constants/texts.dart';
import 'package:ecom_app/utils/helpers/device_helpers.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  right: USizes.defaultSpace,
                  left: USizes.defaultSpace,
                  top: UDeviceHelper.getAppBarHeight(),
                ),
                child: Column(
                  children: [
                    Lottie.asset(UImages.onboarding1Animation),
                    Text(
                      UTexts.onBoardingTitle1,
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    Text(
                      UTexts.onBoardingSubTitle1,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              Lottie.asset(UImages.onboarding2Animation),
              Lottie.asset(UImages.onboarding3Animation),
            ],
          ),
        ],
      ),
    );
  }
}
