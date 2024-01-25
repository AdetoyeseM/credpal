import 'package:credpal_assessment/screens/constants/colors/colors.dart';
import 'package:credpal_assessment/screens/constants/text_decoration/text_decoration.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProductSearch extends StatelessWidget {
  const ProductSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return    Column(
            children: [
              Container(
                  decoration: BoxDecoration(color: AppColors.white, boxShadow: [
                    BoxShadow(
                      blurRadius: 20,
                      color: AppColors.oldPallet_2,
                      offset: const Offset(-8, 8),
                    ),
                  ]),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
                  child: Row(children: [
                    Expanded(
                      flex: 6,
                      child: TextFormField(
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: AppColors.oldPallete,
                            contentPadding:
                                const EdgeInsets.symmetric(horizontal: 12),
                            hintText: "Search for products or stores",
                            hintStyle: appTextStyle(
                                fontSize: 12,
                                color: AppColors.hintColor,
                                fontWeight: FontWeight.w400),
                            prefixIcon: Icon(
                              Icons.search,
                              color: AppColors.hintColor,
                            ),
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(20))),
                      ),
                    ),
                    const SizedBox(
                      width: 21,
                    ),
                    Expanded(
                        flex: 1,
                        child: Container(
                          height: 45,
                          width: 45,
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                              color: const Color(0xffF4F5FE),
                              borderRadius: BorderRadius.circular(10)),
                          child: SvgPicture.asset(
                            "assets/images/svgs/scan.svg",
                            height: 24,
                            width: 24,
                          ),
                        ))
                  ]))
            ],
          )
       ;
  }
}