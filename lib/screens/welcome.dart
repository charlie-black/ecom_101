import 'package:ecom_101/components/shared_resources/gradient_button.dart';
import 'package:ecom_101/screens/home_page.dart';
import 'package:ecom_101/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sizer/sizer.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {

  navigationToPage() {
    Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) => const HomePage()),
        (Route<dynamic> route) => false);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
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
              height: 60.h,
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
                    const Shadow(color: Colors.black, blurRadius: 2)
                  ], // Add shadow for better visibility
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: Text(
                'The home for a fashionista',
                style: kTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                  shadows: [
                    const Shadow(color: Colors.black, blurRadius: 2)
                  ], // Add shadow for better visibility
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
                  navigationToPage();
                },
                height: 35,
                width: 35.w,
                borderRadius: 30,
                borderColor: Colors.white,
                colors: const [Colors.grey, Colors.grey],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
