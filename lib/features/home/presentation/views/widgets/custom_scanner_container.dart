import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:malina/core/routers/app_router.dart';
import '../../../../../core/theme/app_color.dart';
import '../../../../../core/theme/app_text_style.dart';
import '../../../../../core/utils/app_assets.dart';

class CustomScannerContainer extends StatelessWidget {
  const CustomScannerContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => GoRouter.of(context).push(AppRouter.kScannerView),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 11),
        height: 90,
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.primary,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            Spacer(
              flex: 5,
            ),
            Image.asset(AppAssets.scannerIcon),
            Spacer(
              flex: 4,
            ),
            Text(
              "Сканируй QR-код и заказывай\nпрямо в заведении",
              style: AppTextStyles.whiteS16W500,
            ),
            Spacer(
              flex: 5,
            ),
          ],
        ),
      ),
    );
  }
}



