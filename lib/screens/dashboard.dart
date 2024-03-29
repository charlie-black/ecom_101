import 'package:ecom_101/components/banner_three.dart';
import 'package:ecom_101/components/banner_two.dart';
import 'package:ecom_101/components/featured_products.dart';
import 'package:ecom_101/components/banner_one.dart';
import 'package:ecom_101/components/recommended.dart';
import 'package:ecom_101/components/shared_resources/carousel.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../components/shared_resources/text_header.dart';
import '../utils/constants.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  List<String> sliderImagePaths = [
    'assets/images/banner_slider.jpeg',
    'assets/images/banner_slider.jpeg',
    'assets/images/banner_slider.jpeg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Container(
                  width: 100.w,
                  height: 200,
                  child: ImageCarousel(assetPaths: sliderImagePaths),
                ),
              ),
              const TitleText(title: "Feature Products",),
              const FeaturedProducts(),
              const BannerOne(),
              const TitleText(title: "Recommended",),
              const RecommendedProducts(),
              const TitleText(title: "Top Collection",),
              const BannerTwo(),
              const SizedBox(height: 20,),
              const BannerThree()


            ],
          ),
        ),
      ),
    );
  }
}
