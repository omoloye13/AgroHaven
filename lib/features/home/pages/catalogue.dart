import 'package:agrohaven/features/home/widgets/product_display.dart';
import 'package:agrohaven/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:agrohaven/features/home/widgets/search_bar.dart';
import 'package:agrohaven/features/home/widgets/top_nav.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class Catalogue extends StatelessWidget {
  const Catalogue({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            TopNav(),
            SizedBox(height: ScreenUtil().setHeight(10)),
            SearchInput(),
            SizedBox(height: ScreenUtil().setHeight(20)),
            Divider(),
            SizedBox(height: ScreenUtil().setHeight(10)),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () => {context.go('/details')},
                      child: ProductDisplay(
                        image: Assets.images.tomatoes.image(),
                        title: "Beef Tomatoes",
                        description: "Beef tomatoes from green farms",
                        price: "N5,000 per KG",
                      ),
                    ),
                    GestureDetector(
                      onTap: () => {context.go('/details')},
                      child: ProductDisplay(
                        image: Assets.images.chili.image(),
                        title: "Red Chillies",
                        description: "Fresh bags of pepper from Ajayi farms",
                        price: "N8,000 per KG",
                      ),
                    ),
                  ],
                ),
                SizedBox(height: ScreenUtil().setHeight(20)),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () => {context.go('/details')},
                      child: ProductDisplay(
                        image: Assets.images.potato.image(),
                        title: "Irish Potatoes",
                        description: "Irish potatoes from green farms",
                        price: "N5,000 per KG",
                      ),
                    ),
                    GestureDetector(
                      onTap: () => {context.go('/details')},
                      child: ProductDisplay(
                        image: Assets.images.carrot.image(),
                        title: "Carrots",
                        description: "Carrots from green farms",
                        price: "N5,000 per KG",
                      ),
                    ),
                  ],
                ),
                SizedBox(height: ScreenUtil().setHeight(20)),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () => {context.go('/details')},
                      child: ProductDisplay(
                        image: Assets.images.cabbage.image(),
                        title: "Cabbage",
                        description: "Cabbage from green farms",
                        price: "N5,000 per KG",
                      ),
                    ),
                    GestureDetector(
                      onTap: () => {context.go('/details')},
                      child: ProductDisplay(
                        image: Assets.images.rice.image(),
                        title: "Rice",
                        description: "Rice from green farms",
                        price: "N5,000 per KG",
                      ),
                    ),
                  ],
                ),
                SizedBox(height: ScreenUtil().setHeight(20)),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () => {context.go('/details')},
                      child: ProductDisplay(
                        image: Assets.images.greenBeans.image(),
                        title: "French Beans",
                        description: "French beans from green farms",
                        price: "N5,000 per KG",
                      ),
                    ),
                    GestureDetector(
                      onTap: () => {context.go('/details')},
                      child: ProductDisplay(
                        image: Assets.images.onion.image(),
                        title: "Red Cabbage",
                        description: "Red cabbage from green farms",
                        price: "N5,000 per KG",
                      ),
                    ),
                  ],
                ),
                // SizedBox(height: 20.0),
                SizedBox(height: ScreenUtil().setHeight(20)),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ProductDisplay(
                      image: Assets.images.spinach.image(),
                      title: "Baby Spinach",
                      description: "Baby spinach from green farms",
                      price: "N5,000 per KG",
                    ),
                    ProductDisplay(
                      image: Assets.images.onion.image(),
                      title: "Green Capsicum",
                      description: "Green Capsicum from green farms",
                      price: "N5,000 per KG",
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
