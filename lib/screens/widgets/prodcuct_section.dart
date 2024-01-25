import 'package:credpal_assessment/screens/constants/colors/colors.dart';
import 'package:credpal_assessment/screens/constants/text_decoration/text_decoration.dart';
import 'package:credpal_assessment/screens/widgets/grid_card.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_svg/flutter_svg.dart';

class ProductSection extends StatelessWidget {
  const ProductSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.oldPallet_2,
      child: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                GridCards(
                    circiularWidget: Column(
                      children: [
                        Text(
                          "Pay",
                          style: appTextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: const Color(0xffC1C1CE)),
                        ),
                        Text(
                          "40%",
                          style: appTextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w800,
                              color: AppColors.primaryColor),
                        ),
                      ],
                    ),
                    productImage: "nokia",
                    productDiscountedPrice: "₦ 39,780",
                    productOldPrice: "₦ 89,780",
                    productName: "Nokia G20"),
                GridCards(
                    circiularWidget:
                        SvgPicture.asset("assets/images/svgs/ogabassey.svg"),
                    productImage: "oga_bassey",
                    productDiscountedPrice: "₦ 25,999",
                    productOldPrice: "₦ 35,000",
                    productName: "iPhone X 4GB.."),
                GridCards(
                    circiularWidget:
                        SvgPicture.asset("assets/images/svgs/okayfones.svg"),
                    productImage: "iphone",
                    productDiscountedPrice: "₦ 39,780",
                    productOldPrice: "₦ 89,780",
                    productName: "Nokia G20")
              ],
            ),
          ),
          const SizedBox(
            height: 21,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                GridCards(
                    circiularWidget: SvgPicture.asset(
                      "assets/images/svgs/okayfones.svg",
                    ),
                    productImage: "speaker",
                    productDiscountedPrice: "₦ 39,780",
                    productOldPrice: "₦ 89,780",
                    productName: "Anker Soundcore"),
                GridCards(
                    circiularWidget:
                        SvgPicture.asset("assets/images/svgs/imate_stores.svg"),
                    productImage: "iphone",
                    productDiscountedPrice: "₦ 39,780",
                    productOldPrice: "₦ 89,780",
                    productName: "Iphone 12 Pro"),
                GridCards(
                    circiularWidget:
                        SvgPicture.asset("assets/images/svgs/okayfones.svg"),
                    productImage: "oga_bassey",
                    productDiscountedPrice: "₦ 39,780",
                    productOldPrice: "₦ 89,780",
                    productName: "Nokia G20"),
              ],
            ),
          ),
        ],
      ),
    );

  }
}
