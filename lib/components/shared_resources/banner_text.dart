import 'package:flutter/material.dart';

import '../../utils/constants.dart';

class BannerText extends StatelessWidget {
  final String title;
  final String description;
  const BannerText({super.key, required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return  Expanded(
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
  }
}
