import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return  Placeholder(
      child: Scaffold(
        body: Center(
          child: SvgPicture.asset("assets/bottom_nav_images/profile.svg"),
        ),
      ),
    );
  }
}
