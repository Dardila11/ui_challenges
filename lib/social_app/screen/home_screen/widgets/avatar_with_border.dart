import 'package:flutter/material.dart';

class AvatarWithBorder extends StatelessWidget {
  const AvatarWithBorder({
    super.key,
    required this.image,
    this.isFirst = false,
  });

  final String image;
  final bool isFirst;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border:
            isFirst ? null : Border.all(width: 1.0, color: Colors.deepOrange),
        shape: BoxShape.circle,
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          ClipOval(
            child: Image.asset(image),
          ),
          isFirst
              ? const Icon(
                  Icons.add_box_rounded,
                  color: Colors.white,
                  size: 32,
                )
              : Container()
        ],
      ),
    );
  }
}
