import 'package:flutter/material.dart';
import 'package:malina/features/home/presentation/views/widgets/custom_scanner_container.dart';
import 'package:malina/features/home/presentation/views/widgets/custom_search_bar.dart';



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
          CustomScannerContainer()
        ],
      ),
    );
  }
}
