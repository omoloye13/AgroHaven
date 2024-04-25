import 'package:agrohaven/features/Add/pages/add_page.dart';
import 'package:agrohaven/features/cart/pages/cart_page.dart';
import 'package:agrohaven/features/home/pages/catalogue.dart';
import 'package:agrohaven/features/home/pages/home_page.dart';
import 'package:agrohaven/features/home/widgets/product_details.dart';
// import 'package:agrohaven/features/home/widgets/product_display.dart';
import 'package:agrohaven/features/login/pages/login_page.dart';
import 'package:agrohaven/features/onboarding/pages/onboarding_page.dart';
import 'package:agrohaven/features/signup/pages/signup_page.dart';
import 'package:agrohaven/features/signup/pages/welcome_page.dart';

import 'package:agrohaven/splash_screen.dart';
import 'package:go_router/go_router.dart';
import 'package:agrohaven/features/home/pages/SideNavigation.dart';

/// The route configuration.
GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) {
        return const SplashScreen();
      },
    ),
    GoRoute(
      path: '/onboarding',
      builder: (context, state) {
        return (const OnboardingPage());
      },
    ),
    GoRoute(
      path: '/welcome',
      builder: (context, state) {
        return const WelcomePage();
      },
    ),
    GoRoute(
      path: '/signup',
      builder: (context, state) {
        return const SignupPage();
      },
    ),
    GoRoute(
      path: '/login',
      builder: (context, state) {
        return const LoginPage();
      },
    ),
    GoRoute(
      path: '/home',
      builder: (context, state) {
        return HomePage();
      },
    ),
    GoRoute(
      path: '/catalogue',
      builder: (context, state) {
        return Catalogue();
      },
    ),
    GoRoute(
      path: '/sidenav',
      builder: (context, state) {
        return SideNavigation();
      },
    ),
    GoRoute(
      path: '/add',
      builder: (context, state) {
        return AddPage();
      },
    ),
    GoRoute(
      path: '/details',
      builder: (context, state) {
        return ProductDetails();
      },
    ),
    GoRoute(
      path: '/cart',
      builder: (context, state) {
        return CartPage();
      },
    ),
  ],
);
