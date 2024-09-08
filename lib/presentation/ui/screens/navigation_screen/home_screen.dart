import 'package:craftybay/presentation/ui/utils/assets_path.dart';
import 'package:craftybay/presentation/ui/widgets/app_bar_icon_button.dart';
import 'package:craftybay/presentation/ui/widgets/home_banner_slider.dart';
import 'package:craftybay/presentation/ui/widgets/search_bar_text_form_filed.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
            ],
          ),
        ),
      ),
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


