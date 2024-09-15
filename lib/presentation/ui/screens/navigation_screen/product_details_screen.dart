import 'package:craftybay/presentation/ui/utils/colors.dart';
import 'package:craftybay/presentation/ui/widgets/color_picker.dart';
import 'package:craftybay/presentation/ui/widgets/increment_decrement_button.dart';
import 'package:craftybay/presentation/ui/widgets/product_image_slider.dart';
import 'package:craftybay/presentation/ui/widgets/size_picker.dart';
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
      body: Column(
        children: [
          const ProductImageSlider(),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildProductNameAndQuantitySection(),
                _buildProductReviewSection(),
                _buildSelectProductColorSection(),
                const SizedBox(height: 8),
                _buildSelectProductSizeSection(),
                Column(
                  children: [
                    Text("Description",
                        style: Theme.of(context).textTheme.titleMedium),
                    Text('''
                    A shoe is an item of footwear intended to protect and comfort the human foot. Though the human foot can adapt to varied terrains and climate conditions, it is vulnerable, and shoes provide protection. Form was originally tied to function, but over time, shoes also became fashion items.
                    '''),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSelectProductSizeSection() {
    return SizePicker(
      sizes: const ['S', 'M', 'L', 'XL', 'XXL'],
      onSizeChange: (String selectedSize) {},
    );
  }

  Widget _buildSelectProductColorSection() {
    return ColorPicker(
      colors: const [
        Colors.black,
        Colors.cyan,
        Colors.brown,
        Colors.grey,
        Colors.black45,
      ],
      onColorSelected: (color) {},
    );
  }

  Widget _buildProductReviewSection() {
    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      children: [
        const Wrap(
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            Icon(Icons.star, color: Colors.amber),
            Text(
              '4.8',
              style:
                  TextStyle(fontWeight: FontWeight.w500, color: Colors.black54),
            ),
          ],
        ),
        TextButton(
            onPressed: () {},
            child: const Text(
              "Reviews",
              style: TextStyle(
                color: AppColors.primaryColor,
              ),
            )),
        Card(
          color: AppColors.primaryColor,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
          child: const Padding(
            padding: EdgeInsets.all(4.0),
            child: Icon(
              Icons.favorite_outline_rounded,
              size: 16,
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }

  Widget _buildProductNameAndQuantitySection() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
            child: Text(
          "Happy new year special deal save 30%",
          style:
              Theme.of(context).textTheme.titleMedium?.copyWith(fontSize: 20),
        )),
        const IncrementDecrementButton(),
      ],
    );
  }
}
