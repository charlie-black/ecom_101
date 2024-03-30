import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sizer/sizer.dart';

import '../utils/constants.dart';

class FeaturedProducts extends StatefulWidget {
  const FeaturedProducts({Key? key}) : super(key: key);

  @override
  State<FeaturedProducts> createState() => _FeaturedProductsState();
}

class _FeaturedProductsState extends State<FeaturedProducts> {
  List<Map<String, dynamic>> featuredProducts = [
    {
      'imagePath': 'assets/images/feature1.jpeg',
      'productName': 'Turtleneck Sweater',
      'productPrice': '\$39.99',
    },
    {
      'imagePath': 'assets/images/feature2.png',
      'productName': 'Long Sleeve Dress',
      'productPrice': '\$45.00',
    },
    {
      'imagePath': 'assets/images/feature3.png',
      'productName': 'Sportwear Set',
      'productPrice': '\$80.00',
    },
    {
      'imagePath': 'assets/images/feature4.png',
      'productName': 'Elegant Dress',
      'productPrice': '\$75.00',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const ScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: SizedBox(
        height: 35.h,
        child: ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: featuredProducts.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 150,
                    height: 23.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey.withOpacity(0.3),
                      border: Border.all(
                        color: Colors.transparent,
                        width: 0,
                      ),
                      image: DecorationImage(
                        image: AssetImage(featuredProducts[index]['imagePath']),
                        fit: BoxFit.cover,
                        alignment: Alignment.center,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    featuredProducts[index]['productName'],
                    style: kTextStyle.copyWith(
                        fontSize: 12,
                        color: HexColor("#1D1F22"),
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    featuredProducts[index]['productPrice'],
                    style: kTextStyle.copyWith(
                        fontSize: 16,
                        color: HexColor("#1D1F22"),
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
