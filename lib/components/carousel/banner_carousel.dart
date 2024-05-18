import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class BannerCarousel extends StatefulWidget {
  const BannerCarousel({super.key});

  @override
  State<BannerCarousel> createState() => _BannerCarouselState();
}

class _BannerCarouselState extends State<BannerCarousel> {
  final bannkerKey = GlobalKey<FormState>();
  List images = [
    "assets/images/slider1.png",
    "assets/images/slider2.png",
    "assets/images/slider3.png",
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
