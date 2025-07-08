import 'package:ecom_app/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
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
              OnBoardingPage(
                animation: UImages.onboarding1Animation,
                title: UTexts.onBoardingTitle1,
                Subtitle: UTexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                animation: UImages.onboarding2Animation,
                title: UTexts.onBoardingTitle2,
                Subtitle: UTexts.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                animation: UImages.onboarding3Animation,
                title: UTexts.onBoardingTitle3,
                Subtitle: UTexts.onBoardingSubTitle3,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
