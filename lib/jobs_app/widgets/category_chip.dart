import 'package:flutter/material.dart';

class CategoryChip extends StatelessWidget {
  const CategoryChip({
    super.key,
    required this.icon,
    required this.name,
    required this.isSelected,
  });

  final Icon icon;
  final String name;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
        avatar: icon,
        label: Text(name),
        selected: isSelected,
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ));
  }
}

/* */
