import 'package:carousel_slider/carousel_slider.dart';
import 'package:craftybay/presentation/state_holders/slider_list_controller.dart';
import 'package:craftybay/presentation/ui/utils/colors.dart';
import 'package:craftybay/presentation/ui/widgets/centered_circular_progress_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeBannerSlider extends StatefulWidget {
  const HomeBannerSlider({
    super.key,
  });

  @override
  State<HomeBannerSlider> createState() => _HomeBannerSliderState();
}

class _HomeBannerSliderState extends State<HomeBannerSlider> {
  final ValueNotifier<int> _selectedIndex = ValueNotifier(0);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SliderListController>(builder: (sliderListController) {
      return Visibility(
        visible: !sliderListController.inProgress,
        replacement: const SizedBox(
          height: 192,
          child: CenteredCircularProgressIndicator(),
        ),
        child: Column(
          children: [
            CarouselSlider(
              options: CarouselOptions(
                height: 180.0,
                onPageChanged: (index, reason) => _selectedIndex.value = index,
              ),
              items: sliderListController.sliders.map((slider) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: const EdgeInsets.symmetric(horizontal: 5.0),
                        decoration: BoxDecoration(
                            color: AppColors.primaryColor,
                            borderRadius: BorderRadius.circular(8)),
                        alignment: Alignment.center,
                        child: Row(
                          children: [
                            Image.network(slider.image ?? ''),
                          ],
                        ));
                  },
                );
              }).toList(),
            ),
            const SizedBox(height: 8),
            ValueListenableBuilder(
              valueListenable: _selectedIndex,
              builder: (context, value, child) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    for (int i = 0; i < 5; i++)
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
            )
          ],
        ),
      );
    });
  }

  @override
  void dispose() {
    _selectedIndex.dispose();
    super.dispose();
  }
}
