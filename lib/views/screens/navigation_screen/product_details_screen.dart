import 'package:craftybay/route/route_names.dart';
import 'package:craftybay/utils/app_color.dart';
import 'package:craftybay/views/widgets/common_widgets/custom_app_bar.dart';
import 'package:craftybay/views/widgets/common_widgets/increment_decrement_buttom.dart';
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
      body: Column(
        children: [
          const ProductDetailsBannerSlider(),
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildProductTitleAndQuantitySection(context),
                _buildRatingAndReviewSection(),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildProductTitleAndQuantitySection(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
            child: Text(
          'Happy New Year Special Deal Save 30% New Year Special Deal',
          style: Theme.of(context).textTheme.titleMedium,
        )),
        const IncrementDecrementButton()
      ],
    );
  }

  Widget _buildRatingAndReviewSection() {
    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      children: [
        const Wrap(
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            Icon(Icons.star, color: Colors.amber, size: 20),
            Text(
              '4.8',
              style: TextStyle(
                color: Colors.black87,
                fontSize: 15,
              ),
            )
          ],
        ),
        TextButton(
            onPressed: () {
              Get.toNamed(RouteNames.reviewScreen);
            },
            child: Text(
              'Reviews',
              style: TextStyle(
                color: AppColor.primaryColor,
                fontSize: 15,
              ),
            )),
        InkWell(
          onTap: () {},
          child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0)),
              color: AppColor.primaryColor,
              child: const Padding(
                padding: EdgeInsets.all(3.0),
                child:
                    Icon(Icons.favorite_outline, size: 14, color: Colors.white),
              )),
        )
      ],
    );
  }
}
