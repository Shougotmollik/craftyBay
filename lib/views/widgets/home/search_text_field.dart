import 'package:flutter/material.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final TextEditingController searchTEController = TextEditingController();
    return Container(
      height: 42,
      decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.circular(8.0)),
      child: TextFormField(
        controller: searchTEController,
        decoration: const InputDecoration(
            prefixIcon: Icon(Icons.search, color: Colors.grey, size: 28),
            hintText: 'Search',
            border: OutlineInputBorder(borderSide: BorderSide.none),
            focusedBorder: OutlineInputBorder(borderSide: BorderSide.none),
            errorBorder: OutlineInputBorder(borderSide: BorderSide.none),
            enabledBorder: OutlineInputBorder(borderSide: BorderSide.none)),
      ),
    );
  }
}
