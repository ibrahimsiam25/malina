import 'package:flutter/material.dart';
import 'package:malina/core/theme/app_color.dart';
import 'package:malina/features/home/presentation/views/widgets/scanner_view_body.dart';

class ScannerView extends StatelessWidget {
  const ScannerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      body: SafeArea(child: ScannerViewBody()),
    );
  }
}
