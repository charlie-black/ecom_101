import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sizer/sizer.dart';

import '../utils/constants.dart';

class NewCollection extends StatefulWidget {
  const NewCollection({Key? key}) : super(key: key);

  @override
  State<NewCollection> createState() => _NewCollectionState();
}

class _NewCollectionState extends State<NewCollection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20.h,
      width: double.infinity,
      color: HexColor("#F8F8FA"),
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
                color: HexColor("#E2E2E2"),
              ),
              child: Center(
                child: Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey.withOpacity(0.2),
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
                            fontSize: 13,
                            fontWeight: FontWeight.normal,
                            color: HexColor("#777E90"),
                          ),
                        ),
                      ),
                      const SizedBox(height: 15),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          'HANG OUT\n& PARTY',
                          style: kTextStyle.copyWith(
                            fontSize: 20,
                            fontWeight: FontWeight.normal,
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

