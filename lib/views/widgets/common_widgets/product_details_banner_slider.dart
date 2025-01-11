import 'package:carousel_slider/carousel_slider.dart';
import 'package:craftybay/utils/app_assets_path.dart';
import 'package:craftybay/utils/app_color.dart';
import 'package:flutter/material.dart';

class ProductDetailsBannerSlider extends StatefulWidget {
  const ProductDetailsBannerSlider({
    super.key,
  });

  @override
  State<ProductDetailsBannerSlider> createState() =>
      _ProductDetailsBannerSliderState();
}

class _ProductDetailsBannerSliderState
    extends State<ProductDetailsBannerSlider> {
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 240,
          width: double.infinity,
          child: CarouselSlider.builder(
            itemCount: 4,
            itemBuilder: (context, index, realIndex) {
              return Container(
                decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    image: const DecorationImage(
                        image: AssetImage(AppAssetsPath.demoShoe),
                        fit: BoxFit.contain)),
              );
            },
            options: CarouselOptions(
                height: 240,
                viewportFraction: 1,
                reverse: false,
                enableInfiniteScroll: true,
                aspectRatio: 16 / 9,
                onPageChanged: (index, reason) {
                  setState(() {
                    activeIndex = index;
                  });
                }),
          ),
        ),
        Positioned(
          bottom: 10,
          left: 180,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              4,
              (index) => AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                margin: const EdgeInsets.symmetric(horizontal: 4),
                width: activeIndex == index ? 16 : 12,
                height: 12,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: activeIndex == index
                      ? AppColor.primaryColor.withAlpha(180)
                      : Colors.white,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
