import 'package:go_router/go_router.dart';
import 'package:malina/features/home/presentation/views/home_view.dart';
import '../../features/home/presentation/views/scanner_view.dart';
import '../../features/splash/views/splash_view.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kScannerView = '/ScannerView';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: "/",
        builder: (context, state) => SplashView(),
      ),
           GoRoute(
        path: kHomeView,
        builder: (context, state) =>  HomeView(),
      ),
           GoRoute(
        path: kScannerView,
        builder: (context, state) =>  ScannerView(),
      ),
      
    ],
  );
}
