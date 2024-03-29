import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../utils/constants.dart';

class BannerOne extends StatefulWidget {
  const BannerOne({Key? key}) : super(key: key);

  @override
  State<BannerOne> createState() => _BannerOneState();
}

class _BannerOneState extends State<BannerOne> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20.h,
      width: double.infinity,
      color: Colors.grey.withOpacity(0.2),
      child: Stack(
        children: [
          Positioned(
            right: 3,
            top: 5,
            child: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey.withOpacity(0.3),
              ),
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
          ),
          Positioned(
            right: 8.0,
            child: Image.asset(
              'assets/images/middle_banner.png',
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
                          '| NEW COLLECTION',
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
                          'HANG OUT\n& PARTY',
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

