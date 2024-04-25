import 'package:go_router/go_router.dart';
import 'package:agrohaven/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TopNav extends StatelessWidget {
  const TopNav({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            IconButton(
              icon: Assets.images.arrowBack.image(
                width: ScreenUtil().setWidth(35),
                height: ScreenUtil().setHeight(35),
              ),
              onPressed: () {
                context.go('/home');
              },
            ),
            IconButton(
              icon: Assets.images.miniLogo.image(
                width: ScreenUtil().setWidth(56),
                height: ScreenUtil().setHeight(58),
              ),
              onPressed: () {
                // context.go('/onboarding');
              },
            ),
          ],
        ),
        IconButton(
          icon: Assets.images.bell.image(
            width: ScreenUtil().setWidth(30),
            height: ScreenUtil().setHeight(30),
          ),
          onPressed: () {
            // context.go('/onboarding');
          },
        ),
      ],
    );
  }
}
