import 'package:carousel_slider/carousel_slider.dart';
import 'package:craftybay/presentation/ui/utils/assets_path.dart';
import 'package:craftybay/presentation/ui/utils/colors.dart';
import 'package:flutter/material.dart';

class ProductImageSlider extends StatefulWidget {
  const ProductImageSlider({
    super.key,
  });

  @override
  State<ProductImageSlider> createState() => _ProductImageSliderState();
}

class _ProductImageSliderState extends State<ProductImageSlider> {
  final ValueNotifier<int> _selectedIndex = ValueNotifier(0);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height: 240.0,
            onPageChanged: (index, reason) => _selectedIndex.value = index,
            viewportFraction: 1,
          ),
          items: [1, 2, 3, 4].map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  decoration:  BoxDecoration(
                    color: AppColors.primaryColor.withOpacity(0.1),
                    image: const DecorationImage(
                      image: AssetImage(AssetsPath.shoeImage),

                    ),
                  ),
                );
              },
            );
          }).toList(),
        ),
        const SizedBox(height: 8),
        Positioned(
          left: 0,
          right: 0,
          bottom: 8,
          child: ValueListenableBuilder(
            valueListenable: _selectedIndex,
            builder: (context, value, child) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  for (int i = 0; i < 4; i++)
                    Container(
                      height: 8,
                      width: 8,
                      margin: const EdgeInsets.only(left: 4),
                      decoration: BoxDecoration(
                        color: value == i
                            ? AppColors.primaryColor
                            : Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(8),
                      ),
                    )
                ],
              );
            },
          ),
        )
      ],
    );
  }

  @override
  void dispose() {
    _selectedIndex.dispose();
    super.dispose();
  }
}
