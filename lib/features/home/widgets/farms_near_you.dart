import 'package:agrohaven/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FarmsNearYou extends StatelessWidget {
  const FarmsNearYou({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(
              top: ScreenUtil().setHeight(8),
              bottom: ScreenUtil().setHeight(8),
              right: ScreenUtil().setWidth(8),
              left: ScreenUtil().setWidth(24)),
          // padding: EdgeInsets.all(ScreenUtil().setWidth(32)),

          child: Text(
            "Farms near you",
            style: GoogleFonts.montserrat(
                textStyle: Theme.of(context).textTheme.displayMedium,
                fontSize: ScreenUtil().setSp(18),
                fontWeight: FontWeight.w700,
                color: Color(0XFF0F6722)),
          ),
        ),
        Stack(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: ScreenUtil()
                      .setWidth(MediaQuery.of(context).size.width * 1.05),
                  child: Assets.images.farmLand.image(),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          right: ScreenUtil().setWidth(36),
                          top: ScreenUtil().setHeight(8)),
                      child: Text(
                        'Buy from \n farmers \n near you',
                        style: GoogleFonts.montserrat(
                            textStyle:
                                Theme.of(context).textTheme.displayMedium,
                            fontSize: ScreenUtil().setSp(24),
                            fontWeight: FontWeight.w700,
                            color: Colors.white),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(
                      right: ScreenUtil().setWidth(32),
                      top: ScreenUtil().setHeight(8)),
                  child: Container(
                    padding: EdgeInsets.only(
                        top: ScreenUtil().setHeight(4),
                        bottom: ScreenUtil().setHeight(2),
                        right: ScreenUtil().setWidth(2),
                        left: ScreenUtil().setWidth(12)),
                    // width: 124,
                    // height: 38,
                    width: ScreenUtil().setWidth(124),
                    height: ScreenUtil().setHeight(38),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0XFF3CAD6D)),
                    child: Text(
                      'Get discounts',
                      style: GoogleFonts.montserrat(
                          textStyle: Theme.of(context).textTheme.displayMedium,
                          fontSize: ScreenUtil().setSp(14),
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
