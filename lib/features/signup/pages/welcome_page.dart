import 'package:agrohaven/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.only(
          top: ScreenUtil().setHeight(95),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      top: ScreenUtil().setHeight(100),
                      bottom: ScreenUtil().setHeight(20)),
                  child: Assets.images.agrohavenLogo.image(
                    width: ScreenUtil().setWidth(83),
                    height: ScreenUtil().setHeight(102),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(bottom: ScreenUtil().setHeight(50)),
              child: Center(
                child: Container(
                  width: ScreenUtil().setWidth(263),
                  height: ScreenUtil().setHeight(54),
                  child: Text(
                    "Who are you signing in as ?",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.montserrat(
                      textStyle: Theme.of(context).textTheme.displayMedium,
                      fontSize: ScreenUtil().setSp(24),
                      fontWeight: FontWeight.w700,
                      color: Color(0XFF013718),
                    ),
                  ),
                ),
              ),
            ),
            Row(
              // crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    IconButton(
                      icon: Assets.images.customer.image(
                        width: ScreenUtil().setWidth(140),
                        height: ScreenUtil().setHeight(140),
                      ),
                      onPressed: () {
                        context.go('/signup');
                      },
                    ),
                    Text(
                      'Customer',
                      style: GoogleFonts.montserrat(
                          textStyle: Theme.of(context).textTheme.displayMedium,
                          fontSize: ScreenUtil().setSp(24),
                          fontWeight: FontWeight.w700,
                          color: Color(0XFF013718)),
                    )
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                      icon: Assets.images.farmer.image(
                        width: ScreenUtil().setWidth(140),
                        height: ScreenUtil().setHeight(140),
                      ),
                      onPressed: () {
                        context.go('/signup');
                      },
                    ),
                    Text(
                      'Farmer',
                      style: GoogleFonts.montserrat(
                        textStyle: Theme.of(context).textTheme.displayMedium,
                        fontSize: ScreenUtil().setSp(24),
                        fontWeight: FontWeight.w700,
                        color: Color(0XFF013718),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
