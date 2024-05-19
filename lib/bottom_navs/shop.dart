import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Shop extends StatefulWidget {
  const Shop({super.key});

  @override
  State<Shop> createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  @override
  Widget build(BuildContext context) {
    return Placeholder(
      child: Scaffold(
        body: Center(
          child: SvgPicture.asset("assets/bottom_nav_images/shop.svg"),
        ),
      ),
    );
  }
}
