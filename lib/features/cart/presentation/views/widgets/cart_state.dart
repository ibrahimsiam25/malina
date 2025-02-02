// import 'package:flutter/material.dart';
// import 'package:malina/core/theme/app_color.dart';
// import 'package:malina/core/theme/app_text_style.dart';

// class CartState extends StatefulWidget {
//   const CartState({super.key});

//   @override
//   State<CartState> createState() => _CartStateState();
// }

// class _CartStateState extends State<CartState> {
//   int selectedIndex = 0;

//   Widget _buildOptionButton(int index, String label) {
//     return InkWell(
//       borderRadius: BorderRadius.circular(20),
//       onTap: () {
//         setState(() {
//           selectedIndex = index;
//         });
//       },
//       child: Container(
//         height: 40,
//         padding: const EdgeInsets.symmetric(horizontal: 48.5, vertical: 10.5),
//         decoration: BoxDecoration(
//           color:
//               selectedIndex == index ? AppColors.primary : AppColors.secondary,
//           borderRadius: BorderRadius.circular(20),
//           border: Border.all(
//             color: AppColors.gray,
//             width: 0.1,
//           ),
//         ),
//         child: Text(
//           label,
//           style: selectedIndex == index
//               ? AppTextStyles.whiteS16W500
//               : AppTextStyles.blackS16W500,
//         ),
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         _buildOptionButton(0, 'Доставка'),
//         const SizedBox(width: 16),
//         _buildOptionButton(1, 'В заведении'),
//       ],
//     );
//   }
// }
