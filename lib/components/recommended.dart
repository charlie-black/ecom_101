import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sizer/sizer.dart';

import '../utils/constants.dart';

class RecommendedProducts extends StatefulWidget {
  const RecommendedProducts({Key? key}) : super(key: key);

  @override
  State<RecommendedProducts> createState() => _RecommendedProductsState();
}

class _RecommendedProductsState extends State<RecommendedProducts> {
  List<Map<String, dynamic>> featuredProducts = [
    {
      'imagePath': 'assets/images/recommended1.png',
      'productName': 'White Fashion Hoodie',
      'productPrice': '\$29.00',
    },
    {
      'imagePath': 'assets/images/recommended2.png',
      'productName': 'Cotton T-shirt',
      'productPrice': '\$30.00',
    }
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const ScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: SizedBox(
        height: 15.h,
        child: ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: featuredProducts.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 70,
                    height: 9.h,
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
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      Text(
                        featuredProducts[index]['productName'],
                        style: kTextStyle.copyWith(
                            fontSize: 12,
                            color: HexColor("#1D1F22"),
                            fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(
                        height: 10,
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
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
