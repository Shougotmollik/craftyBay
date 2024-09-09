import 'package:craftybay/presentation/ui/widgets/category_card.dart';
import 'package:flutter/material.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Categories"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(4.0),
        child: GridView.builder(
          itemCount: 24,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4),
            itemBuilder:(context, index) => const CategoryCard(),),
      ),
    );
  }
}
