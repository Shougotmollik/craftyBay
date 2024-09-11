import 'package:craftybay/presentation/state_holders/bottom_nav_bar_controller.dart';
import 'package:craftybay/presentation/ui/utils/assets_path.dart';
import 'package:craftybay/presentation/ui/widgets/app_bar_icon_button.dart';
import 'package:craftybay/presentation/ui/widgets/home_banner_slider.dart';
import 'package:craftybay/presentation/ui/widgets/horizontal_category_list_view.dart';
import 'package:craftybay/presentation/ui/widgets/horizontal_product_list_view.dart';
import 'package:craftybay/presentation/ui/widgets/search_bar_text_form_filed.dart';
import 'package:craftybay/presentation/ui/widgets/section_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              SearchBarTextFormField(
                  textEditingController: TextEditingController()),
              const SizedBox(height: 16),
              const HomeBannerSlider(),
              const SizedBox(height: 16),
              _buildCategoriesSection(),
              const SizedBox(height: 16),
              _buildProductSection(),
              const SizedBox(height: 16),
              _buildSpecialSection(),
              const SizedBox(height: 16),
              _buildNewSection(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCategoriesSection() {
    return Column(
      children: [
        SectionHeader(
          onTap: () {
            Get.find<BottomNavBarController>().changeCategory();
          },
          title: "All Categories",
        ),
        const SizedBox(height: 8),
        const SizedBox(
          height: 100,
          child: HorizontalCategoriesListView(),
        ),
      ],
    );
  }

  Widget _buildProductSection() {
    return Column(
      children: [
        SectionHeader(
          onTap: () {},
          title: "Popular",
        ),
        const SizedBox(height: 8),
        const SizedBox(
          height: 180,
          child: HorizontalProductListView(),
        ),
      ],
    );
  }

  Widget _buildSpecialSection() {
    return Column(
      children: [
        SectionHeader(
          onTap: () {},
          title: "Special",
        ),
        const SizedBox(height: 8),
        const SizedBox(
          height: 180,
          child: HorizontalProductListView(),
        ),
      ],
    );
  }

  Widget _buildNewSection() {
    return Column(
      children: [
        SectionHeader(
          onTap: () {},
          title: "New",
        ),
        const SizedBox(height: 8),
        const SizedBox(
          height: 180,
          child: HorizontalProductListView(),
        ),
      ],
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: SvgPicture.asset(AssetsPath.appLogoNav),
      actions: [
        AppBarIconButton(
          onTap: () {},
          iconData: Icons.person,
        ),
        const SizedBox(width: 8),
        AppBarIconButton(
          onTap: () {},
          iconData: Icons.call,
        ),
        const SizedBox(width: 8),
        AppBarIconButton(
          onTap: () {},
          iconData: Icons.notifications_on_rounded,
        ),
      ],
    );
  }
}
