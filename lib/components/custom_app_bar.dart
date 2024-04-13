import 'package:flutter/material.dart';

import 'package:my_mtn_app/utils/colors.dart';

PreferredSize customAppBar(BuildContext context) {
  return PreferredSize(
    preferredSize: const Size(double.infinity, 100),
    child: Container(
      color: yellowColor,
      height: 1749,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.only(
            left: 16.0, right: 16.0, bottom: 16.0, top: 70),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              "assets/images/mtn_logo.png",
            ),
            Image.asset(
              "assets/images/menu.png",
            ),
          ],
        ),
      ),
    ),
  );
}
