import 'package:craftybay/presentation/ui/widgets/app_logo_widgets.dart';
import 'package:flutter/material.dart';

class CompleteProfileScreen extends StatefulWidget {
  const CompleteProfileScreen({super.key});

  @override
  State<CompleteProfileScreen> createState() => _CompleteProfileScreenState();
}

class _CompleteProfileScreenState extends State<CompleteProfileScreen> {
  final TextEditingController _emailTEController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              const SizedBox(height: 84),
              const AppLogoWidgets(),
              const SizedBox(height: 24),
              Text(
                "Complete Profile",
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              const SizedBox(height: 6),
              Text(
                "Get started with us with your details",
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge
                    ?.copyWith(color: Colors.black54),
              ),
              const SizedBox(height: 16),
              TextFormField(
                decoration: const InputDecoration(hintText: "First Name"),
              ),
              const SizedBox(height: 16),
              TextFormField(
                decoration: const InputDecoration(hintText: "Last Name"),
              ),
              const SizedBox(height: 16),
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(hintText: "Mobile"),
              ),
              const SizedBox(height: 16),
              TextFormField(
                decoration: const InputDecoration(hintText: "City"),
              ),
              const SizedBox(height: 16),
              TextFormField(
                decoration: const InputDecoration(hintText: "Shipping Address"),
                maxLines: 4,
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {},
                child: const Text("Complete"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
