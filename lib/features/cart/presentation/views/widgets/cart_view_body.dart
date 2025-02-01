import 'package:flutter/material.dart';
import 'package:malina/features/cart/presentation/views/widgets/cart_state.dart';

import 'custom_cart_appbar.dart';

class CartViewBody extends StatelessWidget {
  const CartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 50),
        CustomCartAppBar(),
        Expanded(
          child: ListView(
            children: [
              CartState(),
            ],
          ),
        ),
      ],
    );
  }
}
