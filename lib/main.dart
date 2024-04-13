import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_mtn_app/components/custom_app_bar.dart';
import 'package:my_mtn_app/utils/colors.dart';
import 'package:my_mtn_app/utils/constant.dart';
import 'package:my_mtn_app/utils/theme.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Placeholder(
      child: Scaffold(
        appBar: customAppBar(context),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            children: [
              //
              //constMiniHeight,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Yo!",
                    style: theme().textTheme.displaySmall,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Benjamin, How are you doing",
                    style: theme().textTheme.displayMedium,
                  ),
                ],
              ),
              constHeight,
              Text(
                "Active Subscriptions",
                style: theme().textTheme.displayLarge,
              ),
              Row(
                children: [
                  Text(
                    "Showing results as at 2 April 2024, 10:00am",
                    style: theme().textTheme.bodyMedium,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Icon(
                    FontAwesomeIcons.rotate,
                    color: blackColor,
                    size: 16,
                  )
                ],
              ),
              constHeight,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  airtimeData(
                      "Airtime", "GHS 20.00", "assets/images/phone_grey.png"),
                  airtimeData(
                      "Data", "365.25MB", "assets/images/databundle_icon.png")
                ],
              ),
              constHeight,
              Text(
                "Quick Services",
                style: theme().textTheme.displayLarge,
              ),
              constMiniHeight,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  quickServiceOptions(
                      "assets/images/phone_black.png", "Data Bundle"),
                  quickServiceOptions(
                      "assets/images/momo_wallet.png", "Send MoMo"),
                  quickServiceOptions("assets/images/mashup.png", "Mashup"),
                  quickServiceOptions("assets/images/just4u.png", "Just4U"),
                ],
              ),
              constHeight,
              Text(
                "Pulse Offers & Loyalty",
                style: theme().textTheme.displayLarge,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Column quickServiceOptions(String imageUrl, String label) {
    return Column(
      children: [
        Container(
          width: 56,
          height: 56,
          decoration: BoxDecoration(
              color: yellowColor, borderRadius: BorderRadius.circular(30)),
          child: Image.asset(imageUrl),
        ),
        constSmallHeight,
        Text(
          label,
          style: quickServiceStyle(),
        )
      ],
    );
  }

  Container airtimeData(String label, String amount, String imageUrl) {
    return Container(
      width: 163,
      height: 107,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: yellowColor, width: 3)),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(imageUrl),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  label,
                  style: theme().textTheme.bodySmall,
                )
              ],
            ),
            constSmallHeight,
            Text(
              amount,
              style: theme().textTheme.bodyLarge,
            )
          ],
        ),
      ),
    );
  }
}
