import 'package:flutter/material.dart';

import '../../utils/constants.dart';


class GradientButton extends StatelessWidget {
  final String text;
  final Function onPressed;
  final double width;
  final double height;
  final double borderRadius;
  final List<Color> colors;
  final Alignment begin;
  final Alignment end;
  final Color textColor;
  final Color borderColor;
  final double borderWith;

  const GradientButton({super.key,
    required this.text,
    required this.onPressed,
    this.width = 200,
    this.height = 50,
    this.textColor=Colors.white,
    this.borderRadius = 25,
    this.colors = const [Colors.blue, Colors.green],
    this.begin = Alignment.centerLeft,
    this.end = Alignment.centerRight,
    this.borderColor = Colors.transparent,
    this.borderWith = 1.0
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: begin,
          end: end,
        ),
        borderRadius: BorderRadius.circular(borderRadius),
        border: Border.all(
          color: borderColor,
          width: borderWith,
        ),
      ),
      child: MaterialButton(
        onPressed: () => onPressed(),
        child: Text(
            text,
            style: kTextStyle.copyWith(color: textColor)
        ),
      ),
    );
  }
}