import 'package:craftybay/presentation/ui/utils/colors.dart';
import 'package:flutter/material.dart';

class SizePicker extends StatefulWidget {
  const SizePicker(
      {super.key, required this.sizes, required this.onSizeChange});

  final List<String> sizes;
  final Function(String) onSizeChange;

  @override
  State<SizePicker> createState() => _SizePickerState();
}

class _SizePickerState extends State<SizePicker> {
  late String _selectedSize = widget.sizes.first;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Size",
          style: Theme.of(context).textTheme.titleMedium,
        ),
        const SizedBox(height: 8),
        Wrap(
          spacing: 8,
          children: widget.sizes.map((item) {
            return GestureDetector(
              onTap: () {
                _selectedSize = item;
                setState(() {});
              },
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(8),
                    color:
                        _selectedSize == item ? AppColors.primaryColor : null),
                child: Text(
                  item,
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: _selectedSize == item ? Colors.white : null),
                ),
              ),
            );
          }).toList(),
        )
      ],
    );
  }
}
