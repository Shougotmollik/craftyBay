import 'package:craftybay/route/route_names.dart';
import 'package:craftybay/utils/app_color.dart';
import 'package:craftybay/views/widgets/common_widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ReviewScreen extends StatelessWidget {
  const ReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        appBarTitle: 'Reviews',
        onTap: () {
          Get.back();
        },
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14.0),
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: ListView.separated(
              itemCount: 4,
              itemBuilder: (context, index) {
                return buildReviewCard();
              },
              separatorBuilder: (context, index) => const SizedBox(height: 8.0),
            ),
          ),
        ),
      ),
      floatingActionButton: _buildAddReviewButton(),
    );
  }

  Widget _buildAddReviewButton() {
    return FloatingActionButton(
      elevation: 2,
      clipBehavior: Clip.antiAlias,
      backgroundColor: AppColor.primaryColor,
      tooltip: 'Add Review',
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      onPressed: () {
        Get.toNamed(RouteNames.createReviewScreen);
      },
      child: const Icon(
        Icons.add,
        size: 34,
        color: Colors.white,
      ),
    );
  }

  Widget buildReviewCard() {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          spacing: 8,
          children: [
            Row(
              spacing: 8,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.grey.shade300,
                  radius: 15,
                  child: const Icon(
                    Icons.person_3_outlined,
                    size: 22,
                    color: Colors.black38,
                  ),
                ),
                const Text(
                  'User Name',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.black54,
                  ),
                )
              ],
            ),
            const Text(
              "This shoe works really well. It sympathetically improves my baseball by a lot.It only works when I'm MartiniqueI tried to pepper it but got prune all over it.heard about this on timba radio, decided to give it a try.",
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w500,
                color: Colors.black38,
              ),
              textAlign: TextAlign.justify,
              maxLines: 4,
            ),
          ],
        ),
      ),
    );
  }
}
