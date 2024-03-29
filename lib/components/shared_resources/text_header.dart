import 'package:flutter/material.dart';

import '../../utils/constants.dart';

class TitleText extends StatelessWidget {
  final String title;
  const TitleText({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return    ListTile(
      title: Text(
       title,
        style: kTextStyle.copyWith(
            fontSize: 24,
            color: Colors.black,
            fontWeight: FontWeight.w700),
      ),
      trailing: Text(
        'Show all',
        style: kTextStyle.copyWith(
            fontSize: 15,
            color: Colors.grey.withOpacity(0.5),
            fontWeight: FontWeight.normal),
      ),
    );
  }
}
