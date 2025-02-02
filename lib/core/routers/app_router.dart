import 'package:go_router/go_router.dart';
import 'package:malina/bottom_nav_bar.dart';
import 'package:malina/features/cart/presentation/views/cart_view.dart';
import 'package:malina/features/home/presentation/views/home_view.dart';

import '../../features/home/presentation/views/scanner_view.dart';
import '../../features/splash/views/splash_view.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kScannerView = '/ScannerView';
  static const kCartView = '/cartView';
  static const kBottomNavBarController = '/bottomNavBarController';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: "/",
        builder: (context, state) => SplashView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => HomeView(),
      ),
      GoRoute(
        path: kScannerView,
        builder: (context, state) => ScannerView(),
      ),
      GoRoute(
        path: kCartView,
        builder: (context, state) => CartView(),
      ),
      GoRoute(
        path: kBottomNavBarController,
        builder: (context, state) => BottomNavBarController(),
      ),
    ],
  );
}
