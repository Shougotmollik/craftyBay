import 'package:craftybay/views/widgets/common_widgets/categories_card.dart';
import 'package:flutter/material.dart';

class HorizontalCategoriesListView extends StatelessWidget {
  const HorizontalCategoriesListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const CategoriesCard();
        },
        separatorBuilder: (context, index) => const SizedBox(width: 14),
        itemCount: 6);
  }
}
