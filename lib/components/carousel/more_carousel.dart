import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class MoreCarousel extends StatefulWidget {
  const MoreCarousel({super.key});

  @override
  State<MoreCarousel> createState() => _MoreCarouselState();
}

class _MoreCarouselState extends State<MoreCarousel> {
  final bannkerKey = GlobalKey<FormState>();
  List images = [
    "assets/images/more_offers.png",
  ];
  //int activieIndex = 0;
  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
        key: bannkerKey,
        itemCount: images.length,
        itemBuilder: (context, index, realIndex) {
          final slideIndex = images[index];
          return Image.asset(
            width: 343,
            slideIndex,
            fit: BoxFit.fill,
          );
        },
        options: CarouselOptions(
          height: 180,
          autoPlay: true,
          viewportFraction: 1,
        ));
  }
}
