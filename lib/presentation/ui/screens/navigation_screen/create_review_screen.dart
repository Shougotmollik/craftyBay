import 'package:flutter/material.dart';

class CreateReviewScreen extends StatefulWidget {
  const CreateReviewScreen({super.key});

  @override
  State<CreateReviewScreen> createState() => _CreateReviewScreenState();
}

class _CreateReviewScreenState extends State<CreateReviewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Create Review"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(
                    hintText: "First Name",
                    hintStyle: TextStyle(
                      color: Colors.grey,
                    )),
              ),
              const SizedBox(height: 16),
              TextFormField(
                decoration: const InputDecoration(
                    hintText: "Last Name",
                    hintStyle: TextStyle(
                      color: Colors.grey,
                    )),
              ),
              const SizedBox(height: 16),
              TextFormField(
                maxLines: 8,
                decoration: const InputDecoration(
                  hintText: "Write Review",
                  hintStyle: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ),
              const SizedBox(height: 22),
              ElevatedButton(onPressed: () {}, child: const Text("Submit"))
            ],
          ),
        ),
      ),
    );
  }
}
