import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_mtn_app/bottom_nav_page.dart';
import 'package:my_mtn_app/components/carousel/banner_carousel.dart';
import 'package:my_mtn_app/components/carousel/more_carousel.dart';
import 'package:my_mtn_app/components/custom_app_bar.dart';
import 'package:my_mtn_app/utils/colors.dart';
import 'package:my_mtn_app/utils/constant.dart';
import 'package:my_mtn_app/utils/theme.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: BootomNav(),
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
              constMiniHeight,
              const BannerCarousel(),
              constHeight,
              Text(
                "Recently Bought",
                style: theme().textTheme.displayLarge,
              ),
              constMiniHeight,
              recentlyBought(),
              constHeight,
              Text(
                "Recent Transaction",
                style: theme().textTheme.displayLarge,
              ),
              Row(
                children: [
                  Text(
                    "Gives 1 month transaction history",
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
              constMiniHeight,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 150,
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.grey.withOpacity(0.2)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                          child: Text(
                        "10th January 2024",
                        style: theme().textTheme.bodySmall,
                      )),
                    ),
                  ),
                ],
              ),
              constMiniHeight,
              recentTransactions("8:00am", "Airtime Sent", "To: 0505214878",
                  "GHS 20.00", "Others . Telecel"),
              constMiniHeight,
              recentTransactions("8:00am", "Airtime Sent", "To: 0505214878",
                  "GHS 10.00", "MTN"),
              constMiniHeight,
              recentTransactions("8:00am", "Airtime Sent", "To: 0505214878",
                  "GHS 20.00", "MTN"),
              constHeight,
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 210,
                    //  height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: containerBorderColor)),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        children: [
                          Text(
                            "See all transactions",
                            style: theme().textTheme.bodyLarge,
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          SvgPicture.asset(
                              "assets/bottom_nav_images/arrow-right.svg")
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              constHeight,
              Text(
                "More Offers",
                style: theme().textTheme.displayLarge,
              ),
              constMiniHeight,
              const MoreCarousel()
            ],
          ),
        ),
      ),
    );
  }

  Container recentTransactions(String timeBought, String creditType,
      String amount, String rnumber, String telco) {
    return Container(
      width: 343,
      // height: 101,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            width: 1.4,
            color: containerBorderColor,
          )),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      timeBought,
                      style: theme().textTheme.labelSmall,
                    ),
                    constExSmall,
                    Text(creditType, style: theme().textTheme.displayMedium),
                    constExSmall,
                    Text(
                      amount,
                      style: theme().textTheme.bodyMedium,
                    ),
                  ],
                ),
                Center(
                  child: Text(rnumber, style: theme().textTheme.bodySmall),
                ),
              ],
            ),
            constExSmall,
            const Divider(),
            constExSmall,
            Text(
              telco,
              style: theme().textTheme.bodyMedium,
            ),
          ],
        ),
      ),
    );
  }

  Container recentlyBought() {
    return Container(
      width: 343,
      // height: 101,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            width: 1.4,
            color: containerBorderColor,
          )),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Data Bundle",
                  style: theme().textTheme.bodyMedium,
                ),
                constExSmall,
                Text("365.25MB @ GHS 3.00",
                    style: theme().textTheme.displayMedium),
                constExSmall,
                Text(
                  "Non-expiry",
                  style: theme().textTheme.bodyMedium,
                ),
              ],
            ),
            Container(
              height: 36,
              width: 97,
              decoration: BoxDecoration(
                  color: yellowColor, borderRadius: BorderRadius.circular(8)),
              child: Center(
                child:
                    Text("Buy Again", style: theme().textTheme.displayMedium),
              ),
            ),
          ],
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
