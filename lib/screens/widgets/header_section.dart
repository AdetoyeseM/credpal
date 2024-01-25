import 'package:credpal_assessment/screens/constants/colors/colors.dart';
import 'package:credpal_assessment/screens/constants/text_decoration/text_decoration.dart';
import 'package:flutter/material.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 12, left: 17, top: 72, bottom: 22),
      width: double.infinity,
      decoration: BoxDecoration(color: AppColors.secondaryColor),
      child: Column(
        children: [
          Row(
            children: [
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(
                  "Pay later",
                  style:
                      appTextStyle(fontSize: 28, fontWeight: FontWeight.w900),
                ),
                Row(children: [
                  Text(
                    "everywhere",
                    style:
                        appTextStyle(fontSize: 28, fontWeight: FontWeight.w900),
                  ),
                  const SizedBox(
                    width: 7,
                  ),
                  Container(
                    height: 17,
                    width: 17,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: AppColors.white),
                    child: Icon(
                      Icons.priority_high,
                      color: AppColors.primaryColor,
                      size: 12,
                    ),
                  ),
                ]),
              ]),
              const Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "Shopping limit: ₦0",
                    style:
                        appTextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 134,
                    height: 37,
                    decoration: BoxDecoration(
                        color: AppColors.primaryColor,
                        borderRadius: BorderRadius.circular(4)),
                    child: Center(
                      child: Text(
                        "Activate Credit",
                        style: appTextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w700,
                            color: AppColors.white),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
