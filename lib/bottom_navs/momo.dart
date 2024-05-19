import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Momo extends StatefulWidget {
  const Momo({super.key});

  @override
  State<Momo> createState() => _MomoState();
}

class _MomoState extends State<Momo> {
  @override
  Widget build(BuildContext context) {
    return  Placeholder(
      child: Scaffold(
        body: Center(
          child: SvgPicture.asset("assets/bottom_nav_images/momo.svg"),
        ),
      ),
    );
  }
}
