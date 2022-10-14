import 'package:flutter/material.dart';

import 'category_chip.dart';

class CategoriesList extends StatelessWidget {
  const CategoriesList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 50,
      child: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        children: const [
          CategoryChip(
            icon: Icon(Icons.note_add_outlined),
            name: 'Design',
            isSelected: false,
          ),
          SizedBox(width: 10),
          CategoryChip(
            icon: Icon(Icons.tv_outlined),
            name: 'Tech',
            isSelected: false,
          ),
          SizedBox(width: 10),
          CategoryChip(
            icon: Icon(Icons.business_center_outlined),
            name: 'Business',
            isSelected: false,
          ),
          SizedBox(width: 10),
          CategoryChip(
            icon: Icon(Icons.mark_email_read_outlined),
            name: 'Marketing',
            isSelected: false,
          ),
          SizedBox(width: 10),
          CategoryChip(
            icon: Icon(Icons.health_and_safety_outlined),
            name: 'Nursing',
            isSelected: false,
          ),
          SizedBox(width: 10),
        ],
      ),
    );
  }
}
