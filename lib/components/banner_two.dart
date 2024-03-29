import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../utils/constants.dart';

class BannerTwo extends StatefulWidget {
  const BannerTwo({Key? key}) : super(key: key);

  @override
  State<BannerTwo> createState() => _BannerTwoState();
}

class _BannerTwoState extends State<BannerTwo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20.h,
      width: double.infinity,
      color: Colors.grey.withOpacity(0.2),
      child: Stack(
        children: [
          Positioned(
            right: 15,
            bottom: 23,
            child: Center(
              child: Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey.withOpacity(0.4),
                ),
              ),
            ),
          ),
          Positioned(
            right: 8.0,
            child: Image.asset(
              'assets/images/middle_banner2.png',
              height: 18.h,
              width: 25.w,
              fit: BoxFit.cover,
            ),
          ),
          Positioned.fill(
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          '| Sale up to 40%',
                          style: kTextStyle.copyWith(
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      const SizedBox(height: 15),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          'FOR SLIM\n& BEAUTY',
                          style: kTextStyle.copyWith(
                            fontSize: 24,
                            fontWeight: FontWeight.normal,
                            color: Colors.black.withOpacity(0.6),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

