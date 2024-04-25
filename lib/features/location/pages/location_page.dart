import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:agrohaven/features/location/widgets/show_handler.dart';
import 'package:agrohaven/gen/assets.gen.dart';

class LocationPage extends StatelessWidget {
  const LocationPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
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
                Padding(
                  padding: EdgeInsets.only(left: ScreenUtil().setWidth(20)),
                  child: Text(
                    'Farms near you',
                    style: GoogleFonts.montserrat(
                      textStyle: Theme.of(context).textTheme.displayMedium,
                      fontSize: ScreenUtil().setSp(20),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                )
              ],
            ),
            Divider(),
            SizedBox(height: 10),
            Assets.images.map.image(
              width: ScreenUtil().setWidth(430),
              height: ScreenUtil().setHeight(650),
            ),
            //image

            // Draggable bottom sheet modal
            // Positioned(
            //   // bottom: 10,
            //   left: 0,
            //   right: 0,
            //   // top:20,
            //   child: DraggableModal(),
            // ),
          ],
        ),
      ),
    );
  }
}
