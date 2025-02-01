import 'package:flutter/material.dart';
import 'package:malina/core/theme/app_color.dart';

import '../../../../../core/theme/app_text_style.dart';
import '../../../../../core/utils/app_assets.dart';

class CustomFoodImage extends StatelessWidget {
  const CustomFoodImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
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
              AppAssets.food,
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
                  "Еда",
                  style: AppTextStyles.blackS22W500,
                ),
                SizedBox(height: 10),
                Text(
                  "Из кафе и\nресторанов",
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
