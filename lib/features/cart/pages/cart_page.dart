import 'package:agrohaven/features/home/widgets/top_header.dart';
import 'package:agrohaven/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:agrohaven/features/home/widgets/product_display.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                  padding: EdgeInsets.only(left: ScreenUtil().setWidth(30)),
                  child: Text(
                    'Cart',
                    style: GoogleFonts.montserrat(
                      textStyle: Theme.of(context).textTheme.displayMedium,
                      fontSize: ScreenUtil().setSp(20),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),

                // Icon(Icons.search)
              ],
            ),
            Divider(),
            SizedBox(height: 10),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 16,
                      height: 16,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Colors.black,
                          width: 1,
                        ), // Add color as per your requirement
                      ),
                      child: Text(
                        '.',
                        style: GoogleFonts.montserrat(
                          textStyle: Theme.of(context).textTheme.displayMedium,
                          fontSize: ScreenUtil().setSp(25),
                          fontWeight: FontWeight.w700,
                          color: Color(0XFF3CAD6D),
                        ),
                      ),
                    ),
                    // SizedBox(width: 8), // Adjust spacing as needed
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'assets/images/tomate.png',
                        width: 60,
                        height: 60,
                        fit: BoxFit.cover, // Adjust fit as needed
                      ),
                    ),
                    Text(
                      'Beef Tomato',
                      style: GoogleFonts.montserrat(
                        textStyle: Theme.of(context).textTheme.displayMedium,
                        fontSize: ScreenUtil().setSp(15),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          width: 29,
                          height: 29,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Color(0XFF3CAD6D),
                          ),
                          child: Icon(
                            Icons.remove,
                            // color: Color(0XFF3CAD,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(width: 8),
                        Text(
                          '1KG',
                          style: TextStyle(fontSize: 16),
                        ),
                        SizedBox(width: 8),
                        Container(
                          width: 26,
                          height: 26,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Color(0XFF3CAD6D),

                            // border: Border.all(
                            //   width: 1,
                            // ),
                          ),
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Divider(),
            SizedBox(height: 10),
            //two
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 16,
                      height: 16,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Colors.black,
                          width: 1,
                        ), // Add color as per your requirement
                      ),
                      child: Text(
                        '.',
                        style: GoogleFonts.montserrat(
                          textStyle: Theme.of(context).textTheme.displayMedium,
                          fontSize: ScreenUtil().setSp(25),
                          fontWeight: FontWeight.w700,
                          color: Color(0XFF3CAD6D),
                        ),
                      ),
                    ),
                    // SizedBox(width: 8), // Adjust spacing as needed
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'assets/images/spinach.png',
                        width: 60,
                        height: 60,
                        fit: BoxFit.cover, // Adjust fit as needed
                      ),
                    ),
                    Text(
                      'French Beans',
                      style: GoogleFonts.montserrat(
                        textStyle: Theme.of(context).textTheme.displayMedium,
                        fontSize: ScreenUtil().setSp(15),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          width: 29,
                          height: 29,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Color(0XFF3CAD6D),
                          ),
                          child: Icon(
                            Icons.remove,
                            // color: Color(0XFF3CAD,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(width: 8),
                        Text(
                          '1KG',
                          style: TextStyle(fontSize: 16),
                        ),
                        SizedBox(width: 8),
                        Container(
                          width: 26,
                          height: 26,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Color(0XFF3CAD6D),

                            // border: Border.all(
                            //   width: 1,
                            // ),
                          ),
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 10),

            Divider(),
            SizedBox(height: 10),

            //three
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 16,
                      height: 16,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Colors.black,
                          width: 1,
                        ), // Add color as per your requirement
                      ),
                      child: Text(
                        '.',
                        style: GoogleFonts.montserrat(
                          textStyle: Theme.of(context).textTheme.displayMedium,
                          fontSize: ScreenUtil().setSp(25),
                          fontWeight: FontWeight.w700,
                          color: Color(0XFF3CAD6D),
                        ),
                      ),
                    ),
                    // SizedBox(width: 8), // Adjust spacing as needed
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'assets/images/cabbage.png',
                        width: 60,
                        height: 60,
                        fit: BoxFit.cover, // Adjust fit as needed
                      ),
                    ),
                    Text(
                      'Cabbage',
                      style: GoogleFonts.montserrat(
                        textStyle: Theme.of(context).textTheme.displayMedium,
                        fontSize: ScreenUtil().setSp(15),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          width: 29,
                          height: 29,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Color(0XFF3CAD6D),
                          ),
                          child: Icon(
                            Icons.remove,
                            // color: Color(0XFF3CAD,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(width: 8),
                        Text(
                          '1KG',
                          style: TextStyle(fontSize: 16),
                        ),
                        SizedBox(width: 8),
                        Container(
                          width: 26,
                          height: 26,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Color(0XFF3CAD6D),

                            // border: Border.all(
                            //   width: 1,
                            // ),
                          ),
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Divider(),
            SizedBox(height: 50),
            Container(
              width: ScreenUtil().setWidth(250),
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
                  'Checkout',
                  style: GoogleFonts.montserrat(
                    textStyle: Theme.of(context).textTheme.displayLarge,
                    fontSize: ScreenUtil().setSp(20),
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(height: 30),
            Container(
              height: 29,
              width: 300,
              color: Color(0XFFE2E2E2),
              child: TopHeader(
                header: 'See also',
                title: 'See more',
              ),
            ),
            SizedBox(height: ScreenUtil().setHeight(15)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ProductDisplay(
                  image: Assets.images.tomatoes.image(),
                  title: "Beef Tomatoes",
                  description: "Beef tomatoes from green farms",
                  price: "N5,000 per Bag",
                ),
                ProductDisplay(
                  image: Assets.images.chili.image(),
                  title: "Pepper",
                  description: "Fresh bags of pepper from Ajayi farms",
                  price: "N8,000 per Bag",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
