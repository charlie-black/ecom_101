import 'package:ecom_101/screens/home_page.dart';
import 'package:ecom_101/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../shared_resources/gradient_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  void navigateToPage(BuildContext context) {
    Navigator.of(context).pushAndRemoveUntil(
      MaterialPageRoute(builder: (context) => HomePage()),
          (Route<dynamic> route) => false,
    );
  }

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 3),
            ),
          ],
          color: HexColor("#000000").withOpacity(0.7),
          image: const DecorationImage(
            image: AssetImage('assets/images/splash.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: screenHeight * 0.6,
              ),
              Padding(
                padding: const EdgeInsets.all(kDefaultPadding),
                child: Text(
                  'Welcome to GemStore!',
                  textAlign: TextAlign.center,
                  style: kTextStyle.copyWith(
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                    shadows: [
                      const Shadow(color: Colors.black, blurRadius: 2),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Text(
                  'The home for a fashionista',
                  textAlign: TextAlign.center,
                  style: kTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                    shadows: [
                      Shadow(color: Colors.black.withOpacity(0.5), blurRadius: 2),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GradientButton(
                  text: "Get Started",
                  onPressed: () {
                    navigateToPage(context);
                  },
                  height: screenHeight * 0.07,
                  width: screenWidth * 0.4,
                  borderRadius: 30,
                  borderColor: Colors.white,
                  colors: [HexColor("#747778"), HexColor("#747778")],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
