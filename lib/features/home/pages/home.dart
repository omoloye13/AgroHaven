import 'package:agrohaven/features/home/widgets/farms_near_you.dart';
import 'package:agrohaven/features/home/widgets/search_bar.dart';
import 'package:agrohaven/features/home/widgets/top_bar.dart';
import 'package:agrohaven/features/home/widgets/product_display.dart';
import 'package:agrohaven/features/home/widgets/top_header.dart';

import 'package:agrohaven/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Home extends StatelessWidget {
  const Home({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            TopBar(),
            SizedBox(height: ScreenUtil().setHeight(10)),
            SearchInput(),
            SizedBox(height: ScreenUtil().setHeight(20)),
            Divider(),
            SizedBox(height: ScreenUtil().setHeight(10)),
            TopHeader(
              header: 'Most Popular',
              title: 'See more',
            ),
            SizedBox(height: ScreenUtil().setHeight(15)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ProductDisplay(
                  image: Assets.images.tomatoes.image(),
                  title: "Beef Tomatoes",
                  description: "Beef tomatoes from green farms",
                  price: "N5,000 per Bag",
                ),
                ProductDisplay(
                  image: Assets.images.chili.image(),
                  title: "Pepper",
                  description: "Fresh bags of pepper from Ajayi farms",
                  price: "N8,000 per Bag",
                ),
              ],
            ),
            SizedBox(height: ScreenUtil().setHeight(25)),
            Divider(),
            SizedBox(height: ScreenUtil().setHeight(15)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: ScreenUtil()
                      .setWidth(MediaQuery.of(context).size.width * 0.9),
                  height: ScreenUtil().setHeight(60),
                  padding: EdgeInsets.all(ScreenUtil().setWidth(8)),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0XFFDDA15E),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Due this season',
                            style: GoogleFonts.montserrat(
                                textStyle:
                                    Theme.of(context).textTheme.displayMedium,
                                fontSize: ScreenUtil().setSp(16),
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          ),
                          SizedBox(height: ScreenUtil().setHeight(5)),
                          Row(
                            children: [
                              Assets.images.date.image(
                                width: ScreenUtil().setWidth(12),
                                height: ScreenUtil().setHeight(13),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    left: ScreenUtil().setWidth(8)),
                                child: Text(
                                  'Last Date November 2024',
                                  style: GoogleFonts.montserrat(
                                      textStyle: Theme.of(context)
                                          .textTheme
                                          .displayMedium,
                                      fontSize: ScreenUtil().setSp(12),
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.all(ScreenUtil().setWidth(5)),
                        width: ScreenUtil().setWidth(89),
                        height: ScreenUtil().setWidth(28),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: Colors.white,
                            width: 1,
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              'View all',
                              style: GoogleFonts.montserrat(
                                  textStyle:
                                      Theme.of(context).textTheme.displayMedium,
                                  fontSize: ScreenUtil().setSp(12),
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white),
                            ),
                            Assets.images.arrow.image(),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: ScreenUtil().setHeight(15)),

            Divider(),
            FarmsNearYou(),
            // SizedBox(height: ScreenUtil().setHeight(20)),
            // SizedBox(height: ScreenUtil().setHeight(30)),
            // Divider(),
          ],
        ),
      ),
    );
  }
}
