import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import '../../utils/constants.dart';



Widget buildLoader() {
  return Center(child: SpinKitPulse(color: kBackgroundColor));
}


