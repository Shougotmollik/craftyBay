import 'package:craftybay/views/widgets/common_widgets/custom_submit_button.dart';
import 'package:flutter/material.dart';

class CreateReview extends StatefulWidget {
  const CreateReview({super.key});

  @override
  State<CreateReview> createState() => _CreateReviewState();
}

final TextEditingController _firstNameTEController = TextEditingController();
final TextEditingController _lastNameTEController = TextEditingController();
final TextEditingController _reviewTEController = TextEditingController();

class _CreateReviewState extends State<CreateReview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Review'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            spacing: 16,
            children: [
              TextFormField(
                controller: _firstNameTEController,
                decoration: const InputDecoration(hintText: 'First Name'),
              ),
              TextFormField(
                  controller: _lastNameTEController,
                  decoration: const InputDecoration(hintText: 'Last Name')),
              TextFormField(
                controller: _reviewTEController,
                decoration: const InputDecoration(
                  hintText: 'Write Review',
                ),
                maxLines: 8,
                maxLength: 100,
              ),
              const SizedBox(height: 8),
              CustomSubmitButton(
                btnText: 'Submit',
                onTap: () {},
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _firstNameTEController.dispose();
    _lastNameTEController.dispose();
    _reviewTEController.dispose();
    super.dispose();
  }
}
