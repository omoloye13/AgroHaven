import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TopHeader extends StatelessWidget {
  const TopHeader({
    super.key,
    required this.header,
    required this.title,
  });
  final String header;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Padding(
          padding: EdgeInsets.only(right: ScreenUtil().setWidth(36)),
          child: Text(
            header,
            style: GoogleFonts.montserrat(
                textStyle: Theme.of(context).textTheme.displayMedium,
                fontSize: ScreenUtil().setSp(18),
                fontWeight: FontWeight.w700,
                color: Color(0XFF0F6722)),
          ),
        ),
        TextButton(
          onPressed: () {
            context.go('/catalogue');
          },
          child: Text(
            title,
            style: GoogleFonts.montserrat(
                textStyle: Theme.of(context).textTheme.displayMedium,
                fontSize: ScreenUtil().setSp(14),
                fontWeight: FontWeight.w500,
                color: Color(0XFF3CAD6D)),
          ),
        ),
      ],
    );
  }
}
