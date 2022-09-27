import 'package:flutter/material.dart';
import 'package:ui_challenges/social_app/models/user.dart';

import 'widgets/navigation_icon.dart';
import 'widgets/stories.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: const Color(0xffFF472C),
        elevation: 0,
        leading: const Icon(Icons.widgets),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.center,
              children: const [
                Icon(Icons.comment_outlined),
                Positioned(
                  right: -5,
                  top: 10,
                  child: CircleAvatar(
                    radius: 8,
                    backgroundColor: Colors.black,
                    child: Text(
                      '2',
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(children: [
          Container(
            margin: const EdgeInsets.only(left: 16.0),
            width: MediaQuery.of(context).size.width,
            height: 100,
            color: Colors.white,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: users.length,
                itemBuilder: (context, index) {
                  return Stories(
                    user: users[index],
                    isFirst: index == 0,
                  );
                }),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: users.length,
                itemBuilder: (context, index) {
                  return PostContainer(user: users[index]);
                }),
          ),
        ]),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 25.0),
        child: Container(
          height: kToolbarHeight + 10,
          decoration: BoxDecoration(
            color: const Color(0xFF2F2C30),
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              NavigationIcon(
                icon: Icons.home,
                isSelected: true,
              ),
              NavigationIcon(icon: Icons.search),
              NavigationIcon(icon: Icons.add_box_rounded),
              NavigationIcon(icon: Icons.notifications),
              NavigationIcon(icon: Icons.person),
            ],
          ),
        ),
      ),
    );
  }
}

class PostContainer extends StatelessWidget {
  const PostContainer({
    super.key,
    required this.user,
  });

  final User user;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16.0),
      height: 350,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Colors.white,
      ),
      child: Column(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 50,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Positioned(
                  left: 20,
                  child: CircleAvatar(
                    child: ClipOval(
                      child: Image.asset(user.profileImage),
                    ),
                  ),
                ),
                Positioned(
                  left: 70,
                  top: 10,
                  child: Text(
                    user.name,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Positioned(
                  left: 70,
                  top: 30,
                  child: Text(
                    '@${user.username}',
                    style: const TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 12,
                    ),
                  ),
                ),
                const Positioned(
                  right: 10,
                  child: Icon(Icons.more_horiz),
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image.asset(
                user.images.first,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: const [
                Icon(Icons.favorite_outline),
                SizedBox(width: 10),
                Text('28'),
                SizedBox(width: 10),
                Icon(Icons.comment_outlined),
                SizedBox(width: 10),
                Text('12'),
                SizedBox(width: 10),
                Icon(Icons.send_outlined),
                Spacer(),
                Text('25 min ago'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
