import 'package:agrohaven/features/onboarding/bloc/onboarding_bloc.dart';
import 'package:agrohaven/features/onboarding/bloc/onboarding_state.dart';
import 'package:agrohaven/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:page_view_dot_indicator/page_view_dot_indicator.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:go_router/go_router.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  @override
  Widget build(BuildContext context) {
    const pageCount = 3;
    // final goRouter = GoRouter.of(context);
    //bloc logic
    OnboardingBloc onboardingBloc = context.watch<OnboardingBloc>();
    OnboardingState onboardingState = onboardingBloc.state;
    int selectedPage = onboardingState.tabIndex;
    final pageController = PageController(initialPage: selectedPage);
    void nextPage() {
      if (selectedPage < pageCount - 1) {
        pageController.animateToPage(
          selectedPage + 1,
          duration: const Duration(milliseconds: 200),
          curve: Curves.easeInOut,
        );
      }
    }

    return MaterialApp(
      title: 'Page view dot indicator',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          child: Column(
            children: [
              Expanded(
                child: Stack(
                  children: [
                    PageView(
                      controller: pageController,
                      onPageChanged: (page) {
                        // Dispatch an action to update the tab index
                        context.read<OnboardingBloc>().updateTabIndex(page);
                      },
                      children: List.generate(pageCount, (index) {
                        return Container(
                          color: [
                            Color(0XFFD4FCE5),
                            Color(0XFFDCFFD3),
                            Color(0XFF8CBA80),
                          ][index],
                          child: _buildImageForIndex(index, nextPage),
                        );
                      }),
                    ),
                    Positioned(
                      left: ScreenUtil().setWidth(0),
                      right: ScreenUtil().setWidth(0),
                      bottom: ScreenUtil().setHeight(350),
                      child: PageViewDotIndicator(
                        currentItem: selectedPage,
                        count: pageCount,
                        unselectedColor: Color(0XFF013718),
                        selectedColor: Color(0XFF2CF682),
                        duration: const Duration(milliseconds: 200),
                        boxShape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(5),
                        fadeEdges: false,
                        size: const Size(8, 8),
                        onItemClicked: (index) {
                          pageController.animateToPage(
                            index,
                            duration: const Duration(milliseconds: 200),
                            curve: Curves.easeInOut,
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildImageForIndex(int index, VoidCallback nextPage) {
    //GoRouter goRouter
    switch (index) {
      case 0:
        return Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: EdgeInsets.only(top: ScreenUtil().setHeight(150)),
                child: Assets.images.onboardingOne.image(
                  width: ScreenUtil().setWidth(388),
                  height: ScreenUtil().setHeight(400),
                  fit: BoxFit.scaleDown,
                ),
              ),
              Center(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: ScreenUtil().setHeight(65),
                        bottom: ScreenUtil().setHeight(10),
                      ),
                      child: Text(
                        'Welcome',
                        style: GoogleFonts.montserrat(
                          textStyle: Theme.of(context).textTheme.displayMedium,
                          fontSize: ScreenUtil().setSp(29),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Container(
                      width: ScreenUtil().setWidth(290),
                      height: ScreenUtil().setHeight(63),
                      child: Text(
                        'Get ready to explore a world of fresh farm produce directly from farmers with AgroHaven',
                        textAlign: TextAlign.justify,
                        style: GoogleFonts.montserrat(
                          textStyle: Theme.of(context).textTheme.displaySmall,
                          fontSize: ScreenUtil().setSp(15),
                          fontWeight: FontWeight.w300,
                          // textAlign: TextAlign.justify,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: ScreenUtil().setHeight(75)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: ScreenUtil().setWidth(130),
                      height: ScreenUtil().setHeight(63),
                      child: TextButton(
                          onPressed: () {
                            //Navigate to presignup screen
                            context.go('/welcome');
                          },
                          child: Text(
                            'Skip',
                            style: GoogleFonts.montserrat(
                              textStyle:
                                  Theme.of(context).textTheme.displayMedium,
                              fontSize: ScreenUtil().setSp(20),
                              fontWeight: FontWeight.w500,
                              //  fontStyle: FontStyle.italic,
                            ),
                          )),
                    ),
                    Container(
                      width: ScreenUtil().setWidth(130),
                      height: ScreenUtil().setHeight(63),
                      child: TextButton(
                        onPressed: nextPage,
                        child: Text(
                          'Next',
                          style: GoogleFonts.montserrat(
                            textStyle:
                                Theme.of(context).textTheme.displayMedium,
                            fontSize: ScreenUtil().setSp(20),

                            fontWeight: FontWeight.w500,
                            //  fontStyle: FontStyle.italic,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        );
      case 1:
        return Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: EdgeInsets.only(top: ScreenUtil().setHeight(150)),
                child: Assets.images.onboardingTwo.image(
                  width: ScreenUtil().setWidth(388),
                  height: ScreenUtil().setHeight(400),
                  fit: BoxFit.scaleDown,
                ),
              ),
              Center(
                  child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: ScreenUtil().setHeight(65),
                      bottom: ScreenUtil().setHeight(10),
                    ),
                    child: Text(
                      'Order',
                      style: GoogleFonts.montserrat(
                        textStyle: Theme.of(context).textTheme.displayMedium,
                        fontSize: ScreenUtil().setSp(29),
                        fontWeight: FontWeight.w500,
                        //  fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                  Container(
                    width: ScreenUtil().setWidth(260),
                    height: ScreenUtil().setHeight(63),
                    child: Text(
                      'Browse through farm produce and select items to order',
                      textAlign: TextAlign.justify,
                      style: GoogleFonts.montserrat(
                        textStyle: Theme.of(context).textTheme.displaySmall,
                        fontSize: ScreenUtil().setSp(15),
                        fontWeight: FontWeight.w300,
                        //  fontStyle: FontStyle.italic,
                      ),
                    ),
                  )
                ],
              )),
              Padding(
                padding: EdgeInsets.only(top: ScreenUtil().setHeight(75)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      width: ScreenUtil().setWidth(130),
                      height: ScreenUtil().setHeight(63),
                      child: TextButton(
                        onPressed: nextPage,
                        child: Text(
                          'Next',
                          style: GoogleFonts.montserrat(
                            textStyle:
                                Theme.of(context).textTheme.displayMedium,
                            fontSize: ScreenUtil().setSp(20),
                            fontWeight: FontWeight.w500,
                            //  fontStyle: FontStyle.italic,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        );
      case 2:
        return Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: EdgeInsets.only(top: ScreenUtil().setHeight(150)),
                child: Assets.images.onboardingThree.image(
                  width: ScreenUtil().setWidth(388),
                  height: ScreenUtil().setHeight(400),
                  fit: BoxFit.scaleDown,
                ),
              ),
              Center(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: ScreenUtil().setHeight(65),
                        bottom: ScreenUtil().setHeight(10),
                      ),
                      child: Text(
                        'Relax',
                        style: GoogleFonts.montserrat(
                          textStyle: Theme.of(context).textTheme.displayMedium,
                          fontSize: ScreenUtil().setSp(29),
                          fontWeight: FontWeight.w500,
                          //  fontStyle: FontStyle.italic,
                        ),
                      ),
                    ),
                    Container(
                      width: ScreenUtil().setWidth(250),
                      height: ScreenUtil().setHeight(63),
                      child: Text(
                        'Sit back and wait for your farm produce to be delivered to you ',
                        textAlign: TextAlign.justify,
                        style: GoogleFonts.montserrat(
                          textStyle: Theme.of(context).textTheme.displaySmall,
                          fontSize: ScreenUtil().setSp(15),

                          fontWeight: FontWeight.w300,
                          //  fontStyle: FontStyle.italic,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: ScreenUtil().setHeight(75)),
                      child: Container(
                        width: ScreenUtil().setWidth(258),
                        height: ScreenUtil().setHeight(50),
                        child: ElevatedButton(
                          onPressed: () {
                            context.go('/welcome');
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0XFF3CAD6D),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Text(
                            'Sign-up',
                            style: GoogleFonts.montserrat(
                              textStyle:
                                  Theme.of(context).textTheme.displayMedium,
                              fontSize: ScreenUtil().setSp(20),
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        );

      default:
        return Container(); // Placeholder if index is out of range
    }
  }
}
