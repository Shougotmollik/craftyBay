import 'package:flutter/material.dart';

class CreateReview extends StatelessWidget {
  const CreateReview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Review'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          spacing: 16,
          children: [
            TextFormField(
              decoration: const InputDecoration(hintText: 'First Name'),
            ),
            TextFormField(
                decoration: const InputDecoration(hintText: 'Last Name')),
            TextFormField(
              decoration: const InputDecoration(hintText: 'Write Review'),
              maxLines: 10,
            ),
          ],
        ),
      ),
    );
  }
}
