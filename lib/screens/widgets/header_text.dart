import 'package:credpal_assessment/screens/constants/colors/colors.dart';
import 'package:credpal_assessment/screens/constants/text_decoration/text_decoration.dart';
import 'package:flutter/material.dart';

class HeaderText extends StatelessWidget {
  const HeaderText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Featured Merchants",
          style: appTextStyle(
              color: AppColors.headerText,
              fontSize: 16,
              fontWeight: FontWeight.w900),
        ),
        const Spacer(),
        Text(
          "View All",
          style: appTextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: AppColors.primaryColor),
        )
      ],
    );
  }
}
