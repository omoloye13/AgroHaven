import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.label,
    required this.onChanged,
    this.textInputType,
    this.isAPassword = false,
    required this.icon,
  });

  final String label;
  final Widget icon;

  final Function(String newText) onChanged;
  final TextInputType? textInputType;
  final bool isAPassword;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black,
              width: ScreenUtil().setWidth(1),
            ),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16),
              topRight: Radius.circular(16),
              bottomRight: Radius.circular(16),
            ),
          ),
          margin: EdgeInsets.only(top: ScreenUtil().setHeight(16)),
          padding: EdgeInsets.symmetric(
              horizontal: ScreenUtil().setHeight(25),
              vertical: ScreenUtil().setWidth(5)),
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              prefixIcon: icon, // No border
              hintText: label,
              hintStyle: GoogleFonts.montserrat(
                textStyle: Theme.of(context).textTheme.displaySmall,
                fontSize: ScreenUtil().setSp(18),
                fontWeight: FontWeight.w300,
                color: Color(0XFF01210E),
                // fontStyle: FontStyle.italic,
              ),
            ),
            onChanged: onChanged,
            keyboardType: textInputType,
            obscureText: isAPassword,
          ),
        ),
      ],
    );
  }
}
