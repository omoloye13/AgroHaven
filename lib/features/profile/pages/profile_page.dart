import 'package:agrohaven/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
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
                    'Chris Evans',
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
              ],
            ),
            Divider(),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Icon(Icons.save),
                    Text(
                      'Saved',
                      style: GoogleFonts.montserrat(
                        textStyle: Theme.of(context).textTheme.displayMedium,
                        fontSize: ScreenUtil().setSp(15),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.discount),
                    Text(
                      'Discounts',
                      style: GoogleFonts.montserrat(
                        textStyle: Theme.of(context).textTheme.displayMedium,
                        fontSize: ScreenUtil().setSp(15),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.follow_the_signs),
                    Text(
                      'Following',
                      style: GoogleFonts.montserrat(
                        textStyle: Theme.of(context).textTheme.displayMedium,
                        fontSize: ScreenUtil().setSp(15),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 29,
              color: Color(0XFFE2E2E2),
            ),
            Column(
              children: [
                buildRow('Track Orders', Icons.arrow_forward_ios),
                buildRow('Suggestions', Icons.arrow_forward_ios),
                buildRow('Settings', Icons.arrow_forward_ios),
                buildRow('Support', Icons.arrow_forward_ios),
              ],
            ),
            Divider(),
          ],
        ),
      ),
    );
  }
}

Widget buildRow(String text, IconData iconData) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 8.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          text,
          style: GoogleFonts.montserrat(
            // textStyle: Theme.textTheme.displayMedium,
            // textStyle: ,
            fontSize: ScreenUtil().setSp(20),
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(height: 25.0),
        Icon(iconData),
      ],
    ),
  );
}
