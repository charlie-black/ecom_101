import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

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
            fontSize: 20,
            color: HexColor("#000000"),
            fontWeight: FontWeight.w600),
      ),
      trailing: Text(
        'Show all',
        style: kTextStyle.copyWith(
            fontSize: 13,
            color: HexColor("#9B9B9B"),
            fontWeight: FontWeight.normal),
      ),
    );
  }
}
