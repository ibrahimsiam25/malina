import 'package:flutter/material.dart';
import 'package:malina/core/theme/app_color.dart';
import 'package:malina/features/cart/presentation/views/widgets/cart_view_body.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CartViewBody(),
      backgroundColor: AppColors.secondary,
    );
  }
}
