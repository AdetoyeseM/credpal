import 'package:credpal_assessment/screens/constants/colors/colors.dart';
import 'package:credpal_assessment/screens/constants/text_decoration/text_decoration.dart';
import 'package:credpal_assessment/screens/widgets/grid_card.dart';
import 'package:credpal_assessment/screens/widgets/header_section.dart';
import 'package:credpal_assessment/screens/widgets/header_text.dart';
import 'package:credpal_assessment/screens/widgets/merchants_cards.dart';
import 'package:credpal_assessment/screens/widgets/merchants_section.dart';
import 'package:credpal_assessment/screens/widgets/prodcuct_section.dart';
import 'package:credpal_assessment/screens/widgets/product_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ShoppingScreen extends StatelessWidget {
  const ShoppingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.oldPallet_2,
        body: Column(children: [
          HeaderSection(),
          ProductSearch(),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(vertical: 14),
              shrinkWrap: true,
              children: [
                const ProductSection(),
                const SizedBox(
                  height: 12,
                ),
                MerchantsSection()
              ],
            ),
          )
        ]));
  }
}
