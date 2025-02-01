import 'package:flutter/material.dart';
import 'package:malina/core/theme/app_text_style.dart';

import '../../../../../core/theme/app_color.dart';
import '../../../../../core/utils/app_assets.dart';

class CustomBeautyImage extends StatelessWidget {
  const CustomBeautyImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: AppColors.beauty,
        boxShadow: [
          BoxShadow(
            color: AppColors.shadow,
            blurRadius: 12,
            spreadRadius: -8,
            offset: Offset(0, 1),
          ),
        ],
      ),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              AppAssets.beauty,
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
          ),
          Positioned(
            top: 20,
            left: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Бьюти",
                  style: AppTextStyles.blackS22W500,
                ),
                SizedBox(height: 10),
                Text(
                  "Салоны красоты\nи товары",
                  style: AppTextStyles.blackS16W300,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
