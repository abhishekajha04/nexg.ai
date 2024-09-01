import 'package:flutter/material.dart';
import 'package:nexgai_website/responsive/responsive.dart';
import 'package:nexgai_website/utills/common_widget.dart';
import 'package:nexgai_website/utills/constants.dart';
import 'package:nexgai_website/utills/utils.dart';

class HeroSection extends StatefulWidget {
  const HeroSection({super.key});

  @override
  State<StatefulWidget> createState() {
    return HeroSectionState();
  }
}

class HeroSectionState extends State<HeroSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            hexToColor('#E5EFFF'),
            hexToColor('#E5EFFF').withOpacity(0),
          ],
          stops: const [0.60, 1.0],
          begin: Alignment.topCenter, // Gradient start point
          end: Alignment.bottomCenter, // Gradient end point
        ),
      ),
      child: Column(
        children: [
          if (Responsive.isDesktop(context)) const HeroSectionWebView(),
          if (!Responsive.isDesktop(context)) const HeroSectionMobView()
        ],
      ),
    );
  }
}

class HeroSectionMobView extends StatefulWidget {
  const HeroSectionMobView({super.key});

  @override
  State<StatefulWidget> createState() {
    return HeroSectionMobViewState();
  }
}

class HeroSectionMobViewState extends State<HeroSectionMobView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(15, 50, 15, 25),
          child: heroSectionText(context),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15.0, bottom: 15),
          child: Image.asset(
            'assets/images/hero_image.png',
            width: double.infinity,
          ),
        ),
      ],
    );
  }
}

class HeroSectionWebView extends StatefulWidget {
  const HeroSectionWebView({super.key});

  @override
  State<StatefulWidget> createState() {
    return HeroSectionWebViewState();
  }
}

class HeroSectionWebViewState extends State<HeroSectionWebView> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Container(
            constraints: const BoxConstraints(maxWidth: 800),
            padding:
                EdgeInsets.fromLTRB(150 / mockupWebWidth * width, 100, 0, 100),
            child: heroSectionText(context)),
        const Spacer(),
        Padding(
          padding: const EdgeInsets.only(top: 0),
          child: Image.asset(
            'assets/images/hero_image.png',
            width: 600,
          ),
        )
      ],
    );
  }
}

Widget heroSectionText(BuildContext context) {
  final width = MediaQuery.of(context).size.width;
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        'Building exactly the\n'
        'eCommerce website\nyou want.',
        style: TextStyle(
          fontFamily: 'CircularStd-Book', // Assuming you've added this font
          fontSize: width > 600 ? 50 : 30,
          fontWeight: FontWeight.w900,
          color: Colors.black,
        ),
      ),
      const SizedBox(height: 16), // Spacing between the headline and subtext
      Text(
        'WooCommerce is a customizable, open-source eCommerce platform built on WordPress.'
        'Get started quickly and make your way.',
        style: TextStyle(
          fontFamily: 'CircularStd-Book',
          fontSize: width > 600 ? 20 : 16,
          color: Colors.grey[700], // Subtext color
        ),
      ),
      const SizedBox(height: 24), // Spacing between subtext and buttons
      Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildButton("Let's Connect", () {},
                width: width > 600 ? 240 : 120,
                height: width > 600 ? 60 : 40,
                leftMargin: 0,
                rightMargin: 0,
                bottomMargin: width > 600 ? 40 : 15,
                topMargin: 0,
                borderRadius: width > 600 ? 30 : 20,
                backgroundColor: '#6A11CB',
                textColor: '#FFFFFF',
                fontSize: width > 600 ? 16 : 12),
            SizedBox(width: width > 600 ? 35 : 15), // Spacing between buttons
            Padding(
              padding: EdgeInsets.only(
                bottom: width > 600 ? 25.0 : 0,
                top: width > 600 ? 0 : 8,
              ),
              child: Text(
                'or',
                style: TextStyle(
                  fontFamily: 'CircularStd-Book',
                  fontSize: 18,
                  color: Colors.grey[700],
                ),
              ),
            ),
            SizedBox(width: width > 600 ? 35 : 0),
            Padding(
              padding: const EdgeInsets.only(bottom: 25.0),
              child: TextButton(
                onPressed: () {
                  // Handle "Know Us More" press
                },
                child: Text(
                  'Know Us More',
                  style: TextStyle(
                    fontFamily: 'CircularStd-Book',
                    fontSize: width > 600 ? 18 : 16,
                    color: const Color(0xFF2575FC),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ],
  );
}
