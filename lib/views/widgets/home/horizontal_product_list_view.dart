import 'package:craftybay/views/widgets/common_widgets/product_card.dart';
import 'package:flutter/material.dart';

class HorizontalProductListView extends StatelessWidget {
  const HorizontalProductListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 170,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const ProductCard();
          },
          separatorBuilder: (context, index) => const SizedBox(width: 8),
          itemCount: 6),
    );
  }
}
