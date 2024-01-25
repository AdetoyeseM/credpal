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
            spacing: 32,
            children: [
              MerchantsCard(
                  image: "slot",
                  isPng: true,
                  title: "Slot",
                  isActive: true,
                  color: Color(0xffED3237)),
              MerchantsCard(
                  title: "Pointek",
                  image: "pointek",
                  isPng: true,
                  isActive: true,
                  color: Color(0xff0077C9)),
              MerchantsCard(
                  image: "ogabassey",
                  title: "ogabassey",
                  isActive: true,
                  color: Color(0xffF1F3FE)),
              MerchantsCard(
                  image: "hub",
                  isPng: true,
                  title: "Hubmart",
                  isActive: true,
                  color: Color(0xff000065)),
                   MerchantsCard(
                  image: "slot",
                  isPng: true,
                  title: "Slot",
                  isActive: true,
                  color: Color(0xffED3237)),
              MerchantsCard(
                  title: "Pointek",
                  image: "pointek",
                  isPng: true,
                  isActive: true,
                  color: Color(0xff0077C9)),
              MerchantsCard(
                  image: "ogabassey",
                  title: "ogabassey",
                  isActive: true,
                  color: Color(0xffF1F3FE)),
              MerchantsCard(
                  image: "hub",
                  isPng: true,
                  title: "Hubmart",
                  isActive: true,
                  color: Color(0xff000065)),
                  
            ],
          )
        ],
      ),
    );
  }
}
