import 'package:ecom_app/utils/constants/texts.dart';
import 'package:flutter/material.dart';

class URememberMeCheckbox extends StatelessWidget {
  const URememberMeCheckbox({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(value: true, onChanged: (value) {}),
        Text(UTexts.rememberMe),
      ],
    );
  }
}
