import 'package:credpal_assessment/screens/constants/colors/colors.dart';
import 'package:credpal_assessment/screens/constants/text_decoration/text_decoration.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MerchantsCard extends StatelessWidget {
  const MerchantsCard(
      {super.key,
      required this.title,
      this.isPng,
      required this.isActive,
      this.image,
      required this.color});
  final String? title, image;
  final bool? isActive, isPng;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
                height: 60,
                width: 60,
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(shape: BoxShape.circle, color: color),
                child: isPng != null
                    ? Image.asset(
                        "assets/images/pngs/$image.png",
                        color: Colors.white,
                      )
                    : SvgPicture.asset(
                        "assets/images/svgs/$image.svg", 
                      )),
            Visibility(
              visible: isActive == true,
              child: Positioned(
                right: 3,
                top: 2,
                child: Container(
                  height: 11,
                  width: 11,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white, width: 1),
                      shape: BoxShape.circle,
                      color: AppColors.green),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          title!,
          style: appTextStyle(
              color: AppColors.black,
              fontSize: 10,
              fontWeight: FontWeight.normal),
        )
      ],
    );
  }
}
