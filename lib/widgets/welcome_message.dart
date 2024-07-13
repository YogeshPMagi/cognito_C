

import 'package:flutter/material.dart';
import 'package:myapp/utils/colors.dart';
import 'package:myapp/utils/text.dart';

class WelcomeMessage extends StatelessWidget {
  const WelcomeMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        AppText(
            text: "Hello, Ask me",
            fontsize: 25,
            color: AppColor.primaryTextColor),
        AppText(
            text: "Anything you want",
            fontsize: 17,
            color: AppColor.secondaryTextColor),
      ],
    );
  }
}