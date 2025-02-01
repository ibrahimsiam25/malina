import 'package:flutter/material.dart';
import 'package:malina/core/theme/app_color.dart';
import 'package:malina/features/splash/views/widgets/splash_view_body.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.primary,
      body: SplashViewBody(),
    );
  }
}