import 'package:carousel_slider/carousel_slider.dart';
import 'package:craftybay/controllers/bottom_nav_bar_controller.dart';
import 'package:craftybay/utils/app_assets_path.dart';
import 'package:craftybay/utils/ui_helper/ui_helper.dart';
import 'package:craftybay/views/widgets/home/header_section.dart';
import 'package:craftybay/views/widgets/home/horizontal_categories_list_view.dart';
import 'package:craftybay/views/widgets/home/horizontal_product_list_view.dart';
import 'package:craftybay/views/widgets/home/search_text_field.dart';
import 'package:craftybay/views/widgets/home/slider_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(spacing: 14.0, children: [
            const SearchTextField(),
            _buildBannerSlider(),
            _buildCategoriesSection(),
            _buildPopularProductSection(),
            _buildSpecialProductSection(),
            _buildNewProductSection(),
            const SizedBox(height: 10),
          ]),
        ),
      ),
    );
  }

  Widget _buildPopularProductSection() {
    return Column(
      children: [
        HeaderSection(headerText: 'Popular', onTap: () {}),
        const HorizontalProductListView(),
      ],
    );
  }

  Widget _buildSpecialProductSection() {
    return Column(
      children: [
        HeaderSection(headerText: 'Special', onTap: () {}),
        const HorizontalProductListView(),
      ],
    );
  }

  Widget _buildNewProductSection() {
    return Column(
      children: [
        HeaderSection(headerText: 'New', onTap: () {}),
        const HorizontalProductListView(),
      ],
    );
  }

  Widget _buildCategoriesSection() {
    return Column(
      children: [
        HeaderSection(
            headerText: 'All Categories',
            onTap: () {
              Get.find<BottomNavBarController>().selectCategoriesScreen();
            }),
        const SizedBox(
          height: 100,
          child: HorizontalCategoriesListView(),
        ),
      ],
    );
  }

  Widget _buildBannerSlider() {
    return SizedBox(
      height: 180,
      width: double.infinity,
      child: CarouselSlider.builder(
          itemCount: 4,
          itemBuilder: (context, index, realIndex) {
            return const SliderCard();
          },
          options: CarouselOptions(
              height: 180,
              viewportFraction: 0.96,
              reverse: false,
              enableInfiniteScroll: true,
              aspectRatio: 16 / 9,
              autoPlay: true,
              autoPlayAnimationDuration: const Duration(seconds: 2))),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      title:
          UiHelper.customImage(imageSource: AppAssetsPath.logoNav, height: 30),
      actions: [
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.person_2_outlined,
            )),
        IconButton(onPressed: () {}, icon: const Icon(Icons.call_outlined)),
        IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications_active_outlined)),
      ],
    );
  }
}
