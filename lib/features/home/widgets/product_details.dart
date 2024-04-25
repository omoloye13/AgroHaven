import 'package:agrohaven/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                  padding: EdgeInsets.only(left: ScreenUtil().setWidth(0)),
                  child: Text(
                    'Product details',
                    style: GoogleFonts.montserrat(
                      textStyle: Theme.of(context).textTheme.displayMedium,
                      fontSize: ScreenUtil().setSp(20),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Icon(Icons.search)
              ],
            ),
            Divider(),
            SizedBox(
              height: 10,
            ),
            Assets.images.tomatoes.image(
              height: ScreenUtil().setHeight(260),
              width: ScreenUtil().setWidth(530),
            ),
            SizedBox(
              height: 30,
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(0),
                        child: Text(
                          'Beef Tomatoes',
                          style: GoogleFonts.montserrat(
                              textStyle:
                                  Theme.of(context).textTheme.displayMedium,
                              fontSize: ScreenUtil().setSp(18),
                              fontWeight: FontWeight.w400,
                              color: Colors.black),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(0),
                        child: Icon(Icons.save),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'N5000 per KG',
                    style: GoogleFonts.montserrat(
                        textStyle: Theme.of(context).textTheme.displayMedium,
                        fontSize: ScreenUtil().setSp(20),
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Available in stock',
                    style: GoogleFonts.montserrat(
                        textStyle: Theme.of(context).textTheme.displayMedium,
                        fontSize: ScreenUtil().setSp(12),
                        fontWeight: FontWeight.w400,
                        color: Color(0XFFFF7810)),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.amberAccent,
                      ),
                      Text(
                        '132 reviews',
                        style: GoogleFonts.montserrat(
                            textStyle:
                                Theme.of(context).textTheme.displayMedium,
                            fontSize: ScreenUtil().setSp(10),
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 29,
                    width: ScreenUtil()
                        .setWidth(MediaQuery.of(context).size.width * 1),
                    color: Color(0XFFE2E2E2),
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text(
                        'Description',
                        style: GoogleFonts.montserrat(
                            textStyle:
                                Theme.of(context).textTheme.displayMedium,
                            fontSize: ScreenUtil().setSp(17),
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                      ),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 8.0, vertical: 16.0),
                      child: Text(
                          style: GoogleFonts.montserrat(
                              textStyle:
                                  Theme.of(context).textTheme.displayMedium,
                              fontSize: ScreenUtil().setSp(14),
                              fontWeight: FontWeight.w400,
                              color: Colors.black),
                          'Welcome to our farm, where we take pride in cultivating the finest produce, including our prized beef tomatoes. Straight from our fields to your kitchen, these tomatoes are a testament to our commitment to quality and freshness'),
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        width: 29,
                        height: 29,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                            color: Color(0XFF3CAD6D),
                            width: 1,
                          ),
                        ),
                        child: Icon(
                          Icons.remove,
                          color: Color(0XFF3CAD6D),
                        ),
                      ),
                      SizedBox(width: 8),
                      Text(
                        '1KG',
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(width: 8),
                      Container(
                        width: 29,
                        height: 29,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                            color: Color(0XFF3CAD6D),
                            width: 1,
                          ),
                        ),
                        child: Icon(
                          Icons.add,
                          color: Color(0XFF3CAD6D),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset(
                        'assets/images/whatsapp.png',
                        width: 50,
                        height: 50,
                      ),

                      //cart and elevated button
                      GestureDetector(
                        onTap: () => {context.go('/cart')},
                        child: Container(
                          width: ScreenUtil().setWidth(284),
                          height: ScreenUtil().setHeight(50),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0XFF3CAD6D),
                          ),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Image.asset(
                                  'assets/images/cart_white.png',
                                  width: 20,
                                  height: 20,
                                ),
                                ElevatedButton(
                                  onPressed: () {
                                    context.go('/cart');
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Color(0XFF3CAD6D),
                                  ),
                                  child: Text(
                                    'Add to Cart',
                                    style: GoogleFonts.montserrat(
                                      textStyle: Theme.of(context)
                                          .textTheme
                                          .displayLarge,
                                      fontSize: ScreenUtil().setSp(20),
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ]),
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
