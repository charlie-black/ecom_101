import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sizer/sizer.dart';

import '../utils/constants.dart';

class SplitBanner extends StatefulWidget {
  const SplitBanner({Key? key}) : super(key: key);

  @override
  State<SplitBanner> createState() => _SplitBannerState();
}

class _SplitBannerState extends State<SplitBanner> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30.h,
      color: Colors.white,
      child: Row(

        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                color: HexColor("#F8F8FA"),
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(
                  color: HexColor("#F8F8FA"),
                  width: 0,
                ),
              ),

              width: 45.w,
              height: 30.h,
              child: Stack(
                children: [
                  Positioned(
                    left: 0.0,
                    child: Image.asset(
                      'assets/images/split_banner1.png',
                      height: 30.h,
                      width: 20.w,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned.fill(
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                               const SizedBox(height: 50),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Text(
                                  'T-Shirts',
                                  style: kTextStyle.copyWith(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400,
                                    color: HexColor("#737680"),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 15),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Text(
                                  'The\nOffice\nLife',
                                  style: kTextStyle.copyWith(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w300,
                                    color: HexColor("#1D1F22"),
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
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                color: HexColor("#F8F8FA"),
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(
                  color: HexColor("#F8F8FA"),
                  width: 0,
                ),
              ),

              width: 45.w,
              height: 30.h,
              child: Stack(
                children: [
                  Positioned(
                    right: 0.0,
                    child: Image.asset(
                      'assets/images/split_banner2.png',
                      height: 30.h,
                      width: 20.w,
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
                              const SizedBox(height: 50),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Text(
                                  'Dresses',
                                  style: kTextStyle.copyWith(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400,
                                    color: HexColor("#737680"),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 15),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Text(
                                  'Elegant\nDesign',
                                  style: kTextStyle.copyWith(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w300,
                                    color: HexColor("#1D1F22"),
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
            ),
          ),
        ],
      ),
    );
  }
}

