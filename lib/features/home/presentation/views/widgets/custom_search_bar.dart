import 'package:flutter/material.dart';
import 'package:malina/core/theme/app_color.dart';
import 'package:malina/core/theme/app_text_style.dart';

import '../../../../../core/utils/app_assets.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            offset: const Offset(3, 3),
            blurRadius: 6,
          ),
          BoxShadow(
            color: AppColors.white,
            offset: const Offset(-3, -3),
            blurRadius: 6,
          ),
        ],
      ),
      child: Row(
        children: [
         Image.asset(AppAssets.searchIcon),
          const SizedBox(width: 10),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintStyle: AppTextStyles.grayS16W400,
                hintText: "Искать в Malina"
              ),
            ),
          ),
        ],
      ),
    );
  }
}
