import 'package:agrohaven/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class AddPage extends StatelessWidget {
  const AddPage({super.key});

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
                    'Post Farm Produce',
                    style: GoogleFonts.montserrat(
                      textStyle: Theme.of(context).textTheme.displayMedium,
                      fontSize: ScreenUtil().setSp(20),
                      fontWeight: FontWeight.w500,
                    ),
                    // textAlign: TextAlign.center,
                  ),
                )
              ],
            ),
            Divider(),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: ScreenUtil()
                      .setWidth(MediaQuery.of(context).size.width * 1),
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      hintText: 'Category',
                      hintStyle: GoogleFonts.montserrat(
                        textStyle: Theme.of(context).textTheme.displayMedium,
                        fontSize: ScreenUtil().setSp(16),
                        fontWeight: FontWeight.w500,
                      ),
                      suffixIcon: Icon(Icons.arrow_forward_ios),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                            color:
                                Color(0XFF013718)), // Set the border color here
                        borderRadius: BorderRadius.circular(
                            10.0), // Set the border radius here
                      ),
                    ),
                  ),
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
            SizedBox(
              height: 20,
            ),
            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(32)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Add a photo of the produce',
                    style: GoogleFonts.montserrat(
                      textStyle: Theme.of(context).textTheme.displayMedium,
                      fontSize: ScreenUtil().setSp(14),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'First picture - is the title picture',
                    style: GoogleFonts.montserrat(
                      textStyle: Theme.of(context).textTheme.displayMedium,
                      fontSize: ScreenUtil().setSp(14),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 106,
                    height: 85,
                    decoration: BoxDecoration(
                      color: Color(0xFFC5DCBF),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Stack(
                        children: [
                          Icon(
                            Icons.add,
                            size: 40,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Supported formats are *.jpg and *.png',
                    style: GoogleFonts.montserrat(
                      textStyle: Theme.of(context).textTheme.displayMedium,
                      fontSize: ScreenUtil().setSp(14),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 29,
                    // width: 350,
                    color: Color(0XFFE2E2E2),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 368,
                    height: 171,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        color: Colors.black,
                        width: 1,
                      ),
                    ),
                    child: TextField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Enter product description',
                        hintStyle: GoogleFonts.montserrat(
                          textStyle: Theme.of(context).textTheme.displayMedium,
                          fontSize: ScreenUtil().setSp(16),
                          fontWeight: FontWeight.w500,
                        ),
                        contentPadding:
                            EdgeInsets.all(12), // Adjust padding as needed
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Divider(),
                  Center(
                    child: Container(
                      width: ScreenUtil().setWidth(350),
                      height: ScreenUtil().setHeight(50),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0XFF3CAD6D),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Text(
                          'Add',
                          style: GoogleFonts.montserrat(
                            textStyle: Theme.of(context).textTheme.displayLarge,
                            fontSize: ScreenUtil().setSp(20),
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
