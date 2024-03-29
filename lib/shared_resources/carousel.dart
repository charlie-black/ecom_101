import 'package:ecom_101/utils/constants.dart';
import 'package:flutter/material.dart';

class ImageCarousel extends StatefulWidget {
  final List<String> assetPaths;

  const ImageCarousel({Key? key, required this.assetPaths}) : super(key: key);

  @override
  _ImageCarouselState createState() => _ImageCarouselState();
}

class _ImageCarouselState extends State<ImageCarousel> {
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        PageView.builder(
          itemCount: widget.assetPaths.length,
          onPageChanged: (int page) {
            setState(() {
              _currentPage = page;
            });
          },
          itemBuilder: (context, index) {
            return Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      color: Colors.transparent,
                      width: 0,
                    ),
                    image: DecorationImage(
                      image: AssetImage(widget.assetPaths[index]),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  top: 0,
                  right: 0,
                  bottom: 0,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    color: Colors.transparent,
                    child:  Center(
                      child: Text(
                        'Autumn\nCollection\n2021',
                        style: kTextStyle.copyWith(fontSize: 24),
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
        Positioned(
          bottom: 20.0,
          left: 0,
          right: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              widget.assetPaths.length,
                  (index) => buildDot(index: index),
            ),
          ),
        ),
      ],
    );
  }

  Widget buildDot({required int index}) {
    return Container(
      width: 8.0,
      height: 8.0,
      margin: const EdgeInsets.symmetric(horizontal: 4.0),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: _currentPage == index ? Colors.white : Colors.grey,
      ),
    );
  }
}
