import 'package:flutter/material.dart';
import 'package:malina/features/home/presentation/views/widgets/custom_search_bar.dart';

import '../../../../../core/theme/app_color.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          const SizedBox(height: 20),
          const CustomSearchBar(),
              const SizedBox(height: 14),
          Container(
            padding:EdgeInsets.symmetric(horizontal: 24,vertical: 11), 
            decoration: BoxDecoration(
              color: AppColors.primary
            )
          )
        ],
      ),
    );
  }
}
