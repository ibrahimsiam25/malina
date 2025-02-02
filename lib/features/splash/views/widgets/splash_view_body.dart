import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:malina/core/utils/app_assets.dart';

import '../../../../core/routers/app_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    executeNavigation();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(AppAssets.spalsh),
    );
  }

  void executeNavigation() {
    Future.delayed(
      Duration(milliseconds: 3000),
      () {
        // ignore: use_build_context_synchronously
        GoRouter.of(context).go(AppRouter.kBottomNavBarController);
      },
    );
  }
}
