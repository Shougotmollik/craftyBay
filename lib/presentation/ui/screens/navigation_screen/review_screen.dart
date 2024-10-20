import 'package:craftybay/presentation/ui/screens/navigation_screen/create_review_screen.dart';
import 'package:craftybay/presentation/ui/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ReviewScreen extends StatefulWidget {
  const ReviewScreen({super.key});

  @override
  State<ReviewScreen> createState() => _ReviewScreenState();
}

class _ReviewScreenState extends State<ReviewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Reviews"),
      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Card(
              elevation: 0,
              color: Colors.grey.shade100,
              child: Container(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        const CircleAvatar(
                          backgroundColor: Colors.transparent,
                          radius: 16,
                          child: Icon(
                            Icons.person_4,
                            size: 28,
                          ),
                        ),
                        const SizedBox(width: 12.0),
                        Text(
                          "Customer Name",
                          style:
                              Theme.of(context).textTheme.titleMedium?.copyWith(
                                    fontSize: 18,
                                  ),
                        )
                      ],
                    ),
                    const SizedBox(height: 8),
                    Text(
                      "A shoe is an item of footwear intended to protect and comfort the human foot. Though the human foot can adapt to varied terrains and climate conditions, it is vulnerable, and shoes provide protection.",
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: Colors.black54,
                            fontSize: 16,
                          ),
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.themeColor,
        shape: const CircleBorder(),
        onPressed: () {
          Get.to(() => const CreateReviewScreen());
        },
        child: const Icon(
          Icons.add,
          size: 32,
          weight: 32,
          color: Colors.white,
        ),
      ),
    );
  }
}
