import 'package:credpal_assessment/screens/constants/colors/colors.dart';
import 'package:credpal_assessment/screens/constants/text_decoration/text_decoration.dart';
import 'package:flutter/material.dart';

class GridCards extends StatelessWidget {
  const GridCards(
      {super.key,
      required this.productImage,
      required this.productDiscountedPrice,
      required this.productOldPrice,
      required this.circiularWidget,
      required this.productName});

  final String? productImage,
      productDiscountedPrice,
      productOldPrice,
      productName;
  final Widget? circiularWidget;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 171,
      margin: const EdgeInsets.only(left: 21, top: 0),
      padding: const EdgeInsets.symmetric(horizontal: 21, vertical: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.06),
            blurRadius: 10,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Image.asset(
                "assets/images/pngs/$productImage.png",
                height: 92,
                width: 132,
                fit: BoxFit.contain,
              ),
              Container(
                height: 50,
                width: 50,
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.06),
                      blurRadius: 10,
                      offset: const Offset(0, 10),
                    ),
                  ],
                ),
                child: circiularWidget,
              ),
            ],
          ),
          const SizedBox(
            height: 13,
          ),
          Text(
            productName!,
            style: appTextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w800,
                color: AppColors.black),
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            children: [
              Text(
                productDiscountedPrice!,
                style: appTextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: AppColors.primaryColor),
              ),
              const SizedBox(
                width: 14,
              ),
              Text(
                productOldPrice!,
                style: appTextStyle(
                    fontSize: 12,
                    decoration: TextDecoration.lineThrough,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xffB3B3CC)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
