import 'package:agrohaven/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchInput extends StatelessWidget {
  const SearchInput({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: ScreenUtil().setWidth(MediaQuery.of(context).size.width * 0.8),
          child: TextField(
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(vertical: 10),
              prefixIcon: IconButton(
                  icon: Assets.images.search.image(
                    width: ScreenUtil().setWidth(20),
                    height: ScreenUtil().setHeight(20),
                  ),
                  onPressed: () {}), // Prefix icon
              suffixIcon: IconButton(
                  icon: Assets.images.filter.image(
                    width: ScreenUtil().setWidth(20),
                    height: ScreenUtil().setHeight(20),
                  ),
                  onPressed: () {}), // Suffix icon
              border: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Color(0XFF013718)), // Set the border color here
                borderRadius:
                    BorderRadius.circular(10.0), // Set the border radius here
              ),
            ),
          ),
        ),
      ],
    );
  }
}
