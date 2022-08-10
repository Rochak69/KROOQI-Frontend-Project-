import 'package:dots_indicator/dots_indicator.dart';

import 'package:flutter/material.dart';

class PropertImageCarousel extends StatefulWidget {
  const PropertImageCarousel({Key? key}) : super(key: key);

  @override
  State<PropertImageCarousel> createState() => _PropertImageCarouselState();
}

class _PropertImageCarouselState extends State<PropertImageCarousel> {
  List<String> photos = [
    'assets/property1.jpg',
    'assets/property2.jpg',
    'assets/property3.jpg',
    'assets/property4.jpg',
    'assets/property5.jpg'
  ];

  int photoIndex = 0;

  void _previousImage() {
    setState(() {
      photoIndex = photoIndex > 0 ? photoIndex - 1 : 0;
    });
  }

  void _nextImage() {
    setState(() {
      photoIndex = photoIndex < photos.length - 1 ? photoIndex + 1 : photoIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GestureDetector(
          onPanUpdate: (details) {
            _swipeImage(details);
          },
          child: SizedBox(
            width: 400,
            height: 215,
            child: Image(
              fit: BoxFit.fill,
              image: AssetImage(
                photos[photoIndex],
              ),
            ),
          ),
        ),
        Positioned(
            top: 160, right: 0, left: 0, child: _buildDotsIndicator(photos)),
      ],
    );
  }

  _buildDotsIndicator(List<String> photos) {
    double dotsPosition = 0;
    setState(() {
      dotsPosition = photoIndex.toDouble();
    });
    return Center(
        child: DotsIndicator(
      dotsCount: photos.length,
      position: dotsPosition,
      decorator: const DotsDecorator(
        activeColor: Colors.white,
      ),
    ));
  }

  _swipeImage(DragUpdateDetails details) {
    if (details.delta.dx > 0) _nextImage();
    if (details.delta.dx < 0) _previousImage();
  }
}
