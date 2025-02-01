import 'package:flutter/material.dart';
import 'package:malina/features/cart/presentation/views/widgets/cart_state.dart';

import 'cart_item.dart';
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
              CartItem(
                productImage: 'assets/images/shampo.png',
                productName: 'Hadat Cosmetics 1900 C',
                description:
                    'Шампунь интенсивно восстанавливающий Hydro Intensive Repair Shampoo 250 мл',
                price: '1900 C',
              ),
              CartItem(
                productImage: 'assets/images/shampo2.png',
                productName: 'Hadat Cosmetics 2000 C',
                description: 'Увлажняющий кондиционер 150 мл',
                price: '2000 C',
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Рreen Beauty >',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              CartItem(
                productImage: 'assets/images/loreal.png',
                productName: 'L\'Oreal Paris Elseve',
                description: 'Шампунь для ослабленных волос',
                price: '600 C',
              ),
            ],
          ),
        ),
      ],
    );
  }
}
