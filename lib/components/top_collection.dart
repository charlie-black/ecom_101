import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sizer/sizer.dart';

import '../utils/constants.dart';

class TopCollection extends StatefulWidget {
  const TopCollection({Key? key}) : super(key: key);

  @override
  State<TopCollection> createState() => _TopCollectionState();
}

class _TopCollectionState extends State<TopCollection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 17.h,
      width: double.infinity,
      color: HexColor("#F8F8FA"),
      child: Stack(
        children: [
          Positioned(
            right: 25,
            bottom: 23,
            child: Center(
              child: Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color:HexColor("#ECECEC"),
                ),
              ),
            ),
          ),
          Positioned(
            right: 8.0,
            child: Image.asset(
              'assets/images/middle_banner2.png',
              height: 17.h,
              width: 30.w,
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
                          'FOR SLIM\n& BEAUTY',
                          style: kTextStyle.copyWith(
                            fontSize: 20,
                            fontWeight: FontWeight.w300,
                            color: HexColor("#777E90"),
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

