import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Services extends StatefulWidget {
  const Services({super.key});

  @override
  State<Services> createState() => _ServicesState();
}

class _ServicesState extends State<Services> {
  @override
  Widget build(BuildContext context) {
    return Placeholder(
      child: Scaffold(
        body: Center(
          child: SvgPicture.asset("assets/bottom_nav_images/services.svg"),
        ),
      ),
    );
  }
}
