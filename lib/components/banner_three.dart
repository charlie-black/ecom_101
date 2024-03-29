import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../utils/constants.dart';

class BannerThree extends StatefulWidget {
  const BannerThree({Key? key}) : super(key: key);

  @override
  State<BannerThree> createState() => _BannerThreeState();
}

class _BannerThreeState extends State<BannerThree> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30.h,
      width: double.infinity,
      color: Colors.grey.withOpacity(0.2),
      child: Stack(
        children: [
          Positioned(
            right: 20,
            bottom: 23,
            child: Center(
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey.withOpacity(0.4),
                ),
              ),
            ),
          ),
          Positioned(
            right: 8.0,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                'assets/images/middle_banner3.png',
                height: 29.h,
                width: 35.w,
                fit: BoxFit.cover,
              ),
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
                          '| Summer Collection 2021',
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
                          'Most sexy\n& fabulous\ndesign',
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

