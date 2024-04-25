import 'package:agrohaven/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductDisplay extends StatelessWidget {
  const ProductDisplay({
    super.key,
    required this.title,
    required this.description,
    required this.price,
    required this.image,
  });

  final String title;
  final String description;
  final String price;
  final Widget image;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: ScreenUtil().setWidth(160),
          height: ScreenUtil().setHeight(250),
          padding: EdgeInsets.only(
            top: ScreenUtil().setHeight(2),
            bottom: ScreenUtil().setHeight(2),
            right: ScreenUtil().setWidth(2),
            left: ScreenUtil().setWidth(2),
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            border: Border.all(
              color: Color(0XFF013718),
              width: ScreenUtil().setWidth(1),
            ),
          ),
          child: ListView(
            children: [
              image,
              SizedBox(height: ScreenUtil().setHeight(5)),
              Text(
                title,
                style: GoogleFonts.montserrat(
                    textStyle: Theme.of(context).textTheme.displayMedium,
                    fontSize: ScreenUtil().setSp(16),
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ),
              SizedBox(height: ScreenUtil().setHeight(5)),
              Text(
                description,
                style: GoogleFonts.montserrat(
                    textStyle: Theme.of(context).textTheme.displaySmall,
                    fontSize: ScreenUtil().setSp(10),
                    fontWeight: FontWeight.w300,
                    color: Colors.black),
              ),
              SizedBox(
                height: ScreenUtil().setHeight(5),
              ),
              Text(
                price,
                style: GoogleFonts.montserrat(
                    textStyle: Theme.of(context).textTheme.displayMedium,
                    fontSize: ScreenUtil().setSp(12),
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ),
              SizedBox(
                height: ScreenUtil().setHeight(5),
              ),
              Assets.images.ratings.image(),
            ],
          ),
        ),
      ],
    );
  }
}
