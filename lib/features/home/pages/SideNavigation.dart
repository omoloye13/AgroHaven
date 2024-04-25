import 'package:agrohaven/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class SideNavigation extends StatelessWidget {
  const SideNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        child: Container(
          color: Color(0XFFDCFFD3),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: ScreenUtil().setWidth(8),
                        right: ScreenUtil().setWidth(8),
                        top: ScreenUtil().setHeight(50)),
                    child: IconButton(
                      icon: Assets.images.miniLogo.image(
                        width: ScreenUtil().setWidth(80),
                        height: ScreenUtil().setHeight(58),
                      ),
                      onPressed: () {
                        // context.go('/onboarding');
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: ScreenUtil().setWidth(8),
                        right: ScreenUtil().setWidth(8),
                        top: ScreenUtil().setHeight(50)),
                    child: IconButton(
                      onPressed: () {
                        context.go('/home');
                      },
                      icon: Icon(Icons.close),
                    ),
                  )
                ],
              ),
              Divider(),
              SizedBox(
                height: ScreenUtil().setHeight(20),
              ),
              Column(
                children: [
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          context.go('/add');
                          //navigate to add crops
                        },
                        icon: Icon(Icons.sell),
                      ),
                      TextButton(
                          onPressed: () {
                            context.go('/add');
                          },
                          child: Text(
                            "Sell on Agro-Haven",
                            style: GoogleFonts.montserrat(
                                textStyle:
                                    Theme.of(context).textTheme.displayMedium,
                                fontSize: ScreenUtil().setSp(17),
                                fontWeight: FontWeight.w400,
                                color: Colors.black),
                          )),
                    ],
                  ),
                  Row(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      IconButton(
                        onPressed: () {
                          // context.go('/home');
                        },
                        icon: Icon(Icons.chat_bubble_outline),
                      ),
                      Text(
                        "Messages",
                        style: GoogleFonts.montserrat(
                            textStyle:
                                Theme.of(context).textTheme.displayMedium,
                            fontSize: ScreenUtil().setSp(17),
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          // context.go('/home');
                        },
                        icon: Icon(Icons.change_circle_sharp),
                      ),
                      Text(
                        "Change to customer account",
                        style: GoogleFonts.montserrat(
                            textStyle:
                                Theme.of(context).textTheme.displayMedium,
                            fontSize: ScreenUtil().setSp(17),
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                      )
                    ],
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: EdgeInsets.only(left: ScreenUtil().setWidth(24)),
                    child: Row(
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Service center",
                          style: GoogleFonts.montserrat(
                              textStyle:
                                  Theme.of(context).textTheme.displayMedium,
                              fontSize: ScreenUtil().setSp(17),
                              fontWeight: FontWeight.w400,
                              color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: EdgeInsets.only(left: ScreenUtil().setWidth(24)),
                    child: Row(
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Get help",
                          style: GoogleFonts.montserrat(
                              textStyle:
                                  Theme.of(context).textTheme.displayMedium,
                              fontSize: ScreenUtil().setSp(17),
                              fontWeight: FontWeight.w400,
                              color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
