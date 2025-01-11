import 'package:carousel_slider/carousel_slider.dart';
import 'package:craftybay/utils/app_color.dart';
import 'package:craftybay/views/widgets/home/slider_card.dart';
import 'package:flutter/material.dart';

class HomeScreenBannerSlider extends StatefulWidget {
  const HomeScreenBannerSlider({
    super.key,
  });

  @override
  State<HomeScreenBannerSlider> createState() => _HomeScreenBannerSliderState();
}

class _HomeScreenBannerSliderState extends State<HomeScreenBannerSlider> {
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      children: [
        SizedBox(
          height: 180,
          width: double.infinity,
          child: CarouselSlider.builder(
            itemCount: 4,
            itemBuilder: (context, index, realIndex) {
              return const HomeSliderCard();
            },
            options: CarouselOptions(
                height: 180,
                viewportFraction: 0.96,
                reverse: false,
                enableInfiniteScroll: true,
                aspectRatio: 16 / 9,
                autoPlay: true,
                autoPlayAnimationDuration: const Duration(seconds: 2),
                onPageChanged: (index, reason) {
                  setState(() {
                    activeIndex = index;
                  });
                }),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            4,
            (index) => AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              margin: const EdgeInsets.symmetric(horizontal: 4),
              width: activeIndex == index ? 18 : 12,
              height: 12,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                border: Border.all(
                  width: 0.8,
                  color: Colors.black38,
                ),
                color: activeIndex == index
                    ? AppColor.primaryColor.withAlpha(180)
                    : Colors.white,
              ),
            ),
          ),
        )
      ],
    );
  }
}
