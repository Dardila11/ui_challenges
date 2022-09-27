import 'package:flutter/material.dart';

class NavigationIcon extends StatelessWidget {
  const NavigationIcon({
    super.key,
    required this.icon,
    this.isSelected = false,
  });

  final IconData icon;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      color: isSelected ? const Color(0xFFF94A27) : const Color(0xFF878588),
    );
  }
}
