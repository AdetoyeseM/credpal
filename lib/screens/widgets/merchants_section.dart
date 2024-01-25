import 'package:credpal_assessment/screens/widgets/header_text.dart';
import 'package:credpal_assessment/screens/widgets/merchants_cards.dart';
import 'package:flutter/material.dart';

class MerchantsSection extends StatelessWidget {
  const MerchantsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 17),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.06),
            blurRadius: 10,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: const Column(
        children: [
          HeaderText(),
          SizedBox(
            height: 32,
          ),
          Wrap(
            runAlignment: WrapAlignment.spaceEvenly,
            crossAxisAlignment: WrapCrossAlignment.start,
            runSpacing: 32,
            spacing: 24,
            children: [
              MerchantsCard(
                image: "justrite",
                  title: "JustRite", isActive: true, color: Color(0xff000065)),
              MerchantsCard(
                  title: "Orile Restaurant",
                  isActive: true,
                  color: Color(0xff000065)),
              MerchantsCard(
                  title: "Slot", isActive: true, color: Color(0xff000065)),
              MerchantsCard(
                  title: "Pointek", isActive: true, color: Color(0xff000065)),
              MerchantsCard(
                  title: "ogabassey", isActive: true, color: Color(0xff000065)),
              MerchantsCard(
                  title: "  Casper Stores",
                  isActive: false,
                  color: Color(0xff000065)),
              MerchantsCard(
                  title: "Dreamworks   ",
                  isActive: false,
                  color: Color(0xff000065)),
              MerchantsCard(
                  title: "Hubmart", isActive: true, color: Color(0xff000065)),
              MerchantsCard(
                  title: "Just Used", isActive: true, color: Color(0xff000065)),
              MerchantsCard(
                  title: "Just Fones",
                  isActive: true,
                  color: Color(0xff000065)),
            ],
          )
        ],
      ),
    );
  }
}
