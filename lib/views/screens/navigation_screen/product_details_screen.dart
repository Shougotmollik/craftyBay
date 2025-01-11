import 'package:craftybay/views/widgets/common_widgets/custom_app_bar.dart';
import 'package:craftybay/views/widgets/common_widgets/product_details_banner_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({super.key});

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
          appBarTitle: 'Product Details',
          onTap: () {
            Get.back();
          }),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            ProductDetailsBannerSlider(),
          ],
        ),
      ),
    );
  }
}
