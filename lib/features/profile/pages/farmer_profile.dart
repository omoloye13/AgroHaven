import 'package:agrohaven/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class FarmerProfile extends StatelessWidget {
  const FarmerProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: 525, // Set the width
                  height: 264, // Set the height
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/profile_bg.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  // Other widgets can be placed inside this container
                ),
                Padding(
                  padding: EdgeInsets.only(top: ScreenUtil().setHeight(250)),
                  child: Center(
                    child: Assets.images.avatar.image(
                      width: ScreenUtil().setWidth(117),
                      height: ScreenUtil().setHeight(117),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: ScreenUtil().setWidth(70)),
                  child: Text(
                    'Green Farms',
                    // textAlign: TextAlign.center,
                    style: GoogleFonts.montserrat(
                      textStyle: Theme.of(context).textTheme.displayMedium,
                      fontSize: ScreenUtil().setSp(26),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Assets.images.group.image(
                  width: ScreenUtil().setWidth(14),
                  height: ScreenUtil().setHeight(14),
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
            Divider()
          ],
        ),
      ),
    );
  }
}
