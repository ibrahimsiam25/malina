import 'package:flutter/material.dart';
import 'package:malina/core/theme/app_text_style.dart';
import 'package:malina/features/home/presentation/views/widgets/custom_beauty_image.dart';
import 'package:malina/features/home/presentation/views/widgets/custom_box.dart';
import 'package:malina/features/home/presentation/views/widgets/custom_food_image.dart';
import 'package:malina/features/home/presentation/views/widgets/custom_scanner_container.dart';
import 'package:malina/features/home/presentation/views/widgets/custom_search_bar.dart';
import '../../../../../core/theme/app_color.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                const SizedBox(height: 20),
                const CustomSearchBar(),
                const SizedBox(height: 14),
                CustomScannerContainer(),
                const SizedBox(height: 20),
                CustomFoodImage(),
                const SizedBox(height: 20),
                CustomBeautyImage(),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Скоро в Malina",
                  style: AppTextStyles.blackS17W500,
                  textAlign: TextAlign.left,
                ),
                const SizedBox(height: 8),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    spacing: 10,
                    children: [
                      CustomBox(text: "Вакансии", color: AppColors.comingSoon1),
                      CustomBox(text: "Маркет", color: AppColors.comingSoon2),
                      CustomBox(text: "Цветы", color: AppColors.comingSoon3),
                      CustomBox(text: "Бьюти", color: AppColors.comingSoon4),
                    ],
                  ),
                ),
                SizedBox(
                  height: 32,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
