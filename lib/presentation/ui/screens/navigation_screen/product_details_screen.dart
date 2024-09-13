import 'package:craftybay/presentation/ui/widgets/increment_decrement_button.dart';
import 'package:craftybay/presentation/ui/widgets/product_image_slider.dart';
import 'package:flutter/material.dart';

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({super.key});

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Product Details"),
      ),
      body: const Column(
        children: [
          ProductImageSlider(),
          IncrementDecrementButton(),
        ],
      ),
    );
  }
}
