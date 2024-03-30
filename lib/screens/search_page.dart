import 'package:ecom_101/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sizer/sizer.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';

class SearchResultsPage extends StatefulWidget {
  const SearchResultsPage({super.key});

  @override
  State<SearchResultsPage> createState() => _SearchResultsPageState();
}

class _SearchResultsPageState extends State<SearchResultsPage> {
  String? _selectedFilter;

  List<Map<String, dynamic>> searchProductsResults = [
    {
      'imagePath': 'assets/images/linen_dress.png',
      'productName': 'Linen Dress',
      'productPrice': '\$52.00',
      'favorite': true,
      'oldPrice': '\$90.00',
      'rating_stars': 5.0,
      'number_of_ratings': 64
    },
    {
      'imagePath': 'assets/images/fitted_waist_dress.png',
      'productName': 'Fitted Waist Dress',
      'productPrice': '\$47.99',
      'oldPrice': '\$82.00',
      'rating_stars': 5.0,
      'number_of_ratings': 53,
      'favorite': false
    },
    {
      'imagePath': 'assets/images/maxi_dress.png',
      'productName': 'Maxi Dress',
      'productPrice': '\$68.00',
      'oldPrice': '',
      'rating_stars': 4.0,
      'number_of_ratings': 46,
      'favorite': false
    },
    {
      'imagePath': 'assets/images/front_mini.png',
      'productName': 'Front Tie Mini Dress',
      'productPrice': '\$59.00',
      'oldPrice': '',
      'rating_stars': 4.0,
      'number_of_ratings': 38,
      'favorite': true
    },
    {
      'imagePath': 'assets/images/ohara.png',
      'productName': 'Ohara Dress',
      'productPrice': '\$85.00',
      'oldPrice': '',
      'rating_stars': 4.0,
      'number_of_ratings': 50,
      'favorite': true
    },
    {
      'imagePath': 'assets/images/tie_back.png',
      'productName': 'Tie Black Mini Dress',
      'productPrice': '\$67.00',
      'oldPrice': '',
      'rating_stars': 5.0,
      'number_of_ratings': 39,
      'favorite': true
    },
    {
      'imagePath': 'assets/images/leaves_green.png',
      'productName': 'Leaves Green Dress',
      'productPrice': '\$64.00',
      'oldPrice': '',
      'rating_stars': 5.0,
      'number_of_ratings': 83,
      'favorite': false
    },
    {
      'imagePath': 'assets/images/off_shaoulder.png',
      'productName': 'Off Shoulder Dress',
      'productPrice': '\$78.99',
      'oldPrice': '',
      'rating_stars': 4.0,
      'number_of_ratings': 25,
      'favorite': false
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const ScrollPhysics(),
        child: Column(
          children: [
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    'Found\n& 152 Results',
                    style: kTextStyle.copyWith(
                      fontSize: 20,
                      fontWeight: FontWeight.w300,
                      color: HexColor("#33302E"),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      border: Border.all(color: Colors.grey),
                    ),
                    height: 40,
                    width: 25.w,
                    child: DropdownButton<String>(
                      underline: const SizedBox(),
                      value: _selectedFilter,
                      onChanged: (String? value) {
                        setState(() {
                          _selectedFilter = value;
                        });
                      },
                      items: <String>['Women', 'Men', 'Beauty']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      hint: Center(
                          child: Text(
                        'Filter',
                        style: kTextStyle.copyWith(
                            color: Colors.black, fontWeight: FontWeight.normal),
                      )),
                      isExpanded: true,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            StaggeredGridView.countBuilder(
              crossAxisCount: 2,
              shrinkWrap: true,
              itemCount: searchProductsResults.length,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) => Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: HexColor('#d8d6c9'),
                              border: Border.all(
                                color: Colors.transparent,
                              ),
                              borderRadius:
                              const BorderRadius.all(Radius.circular(10))),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child: Image.asset(
                                searchProductsResults[index]['imagePath'],
                                fit: BoxFit.cover,
                              )),
                        ),
                        Positioned(
                            top: 0,
                            right: 0,
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                      color: Colors.grey.withOpacity(0.5),
                                    ),
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(30))),
                                height: 30,
                                width: 30,
                                child: Center(
                                    child: Icon(
                                  Icons.favorite,
                                  color: searchProductsResults[index]
                                              ['favorite'] ==
                                          true
                                      ? kDangerColor
                                      : Colors.grey.withOpacity(0.5),
                                )),
                              ),
                            )),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(searchProductsResults[index]['productName'],
                        style: kTextStyle.copyWith(
                            color: HexColor("#1D1F22"),
                            fontSize: 12,
                            fontWeight: FontWeight.w500)),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                            searchProductsResults[index]['productPrice'],
                            style: kTextStyle.copyWith(
                                color: HexColor("#1D1F22"),
                                fontSize: 16,
                                fontWeight: FontWeight.w700)),
                      ),
                      searchProductsResults[index]['oldPrice'] == ""
                          ? const SizedBox(
                              height: 1,
                              width: 1,
                            )
                          : Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                searchProductsResults[index]['oldPrice'],
                                style: kTextStyle.copyWith(
                                    color:HexColor("#BEBFC4"),
                                    fontSize: 12,
                                    decoration: TextDecoration.lineThrough,
                                    decorationColor:HexColor("#BEBFC4"),
                                    fontWeight: FontWeight.w300),
                              ),
                            ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: RatingStars(
                          value: searchProductsResults[index]['rating_stars'],
                          starBuilder: (index, color) => Icon(
                            Icons.star,
                            size: 10,
                            color: color,
                          ),
                          valueLabelVisibility: false,
                          starCount: 5,
                          starSize: 10,
                          maxValue: 5,
                          starSpacing: 2,
                          starOffColor: const Color(0xffe7e8ea),
                          starColor: Colors.teal,
                        ),
                      ),
                      Text(
                        "(${searchProductsResults[index]['number_of_ratings']})",
                        style: kTextStyle.copyWith(
                            color: Colors.grey,
                            fontWeight: FontWeight.normal,
                            fontSize: 12),
                      ),
                    ],
                  ),
                ],
              ),
              staggeredTileBuilder: (index) => const StaggeredTile.fit(1),
              mainAxisSpacing: 8.0,
              crossAxisSpacing: 8.0,
            ),
          ],
        ),
      ),
    );
  }
}
