import 'package:flutter/material.dart';
import 'package:ui_challenges/social_app/models/user.dart';
import 'package:ui_challenges/social_app/screen/profile_screen/profile_screen.dart';

class Stories extends StatelessWidget {
  const Stories({
    super.key,
    required this.user,
    this.isFirst = false,
  });
  final User user;
  final bool isFirst;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (_) => ProfileScreen(user: user),
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 4),
        margin: const EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          border:
              isFirst ? null : Border.all(width: 1.0, color: Colors.deepOrange),
          shape: BoxShape.circle,
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            SizedBox(
              height: 70,
              child: ClipOval(
                child: Image.asset(
                  user.profileImage,
                ),
              ),
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
      ),
    );
  }
}
