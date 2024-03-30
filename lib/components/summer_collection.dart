import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sizer/sizer.dart';

import '../utils/constants.dart';

class SummerCollection extends StatefulWidget {
  const SummerCollection({Key? key}) : super(key: key);

  @override
  State<SummerCollection> createState() => _SummerCollectionState();
}

class _SummerCollectionState extends State<SummerCollection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30.h,
      width: double.infinity,
      color: HexColor("#F8F8FA"),
      child: Stack(
        children: [
          Positioned(
            right: 24,
            bottom: 26,
            child: Center(
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: HexColor("#F3F3F3")
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
                            fontSize: 12,
                            fontWeight: FontWeight.w300,
                            color: HexColor("#777E90"),
                          ),
                        ),
                      ),
                      const SizedBox(height: 15),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          'Most sexy\n& fabulous\ndesign',
                          style: kTextStyle.copyWith(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: HexColor("#353945"),
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

