import 'package:flutter/material.dart';
import 'package:ui_challenges/social_app/models/user.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({
    super.key,
    required this.user,
  });

  final User user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: const Text('My Profile'),
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Icon(Icons.settings),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 40,
                child: ClipOval(
                  child: Image.asset(user.profileImage),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                user.name,
                style: Theme.of(context).textTheme.headline5!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              const SizedBox(height: 15),
              Text(
                '@${user.username}',
                style: Theme.of(context).textTheme.subtitle1,
              ),
              const SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  UserStats(
                      statTitle: 'Photos',
                      statValue: user.images.length.toString()),
                  UserStats(
                      statTitle: 'Followers',
                      statValue: user.followers.toString()),
                  UserStats(
                      statTitle: 'Follows', statValue: user.follows.toString()),
                ],
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 16.0),
                child: Divider(),
              ),
              Row(
                children: const [
                  Chip(
                    label: Text('Photos'),
                    labelStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                    backgroundColor: Color(0xFF4B4A50),
                  ),
                  SizedBox(width: 20),
                  Text(
                    'Video',
                    style: TextStyle(
                      color: Color(0xFFC1C1C1),
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(width: 20),
                  Text(
                    'Tagged',
                    style: TextStyle(
                      color: Color(0xFFC1C1C1),
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                    ),
                  ),
                  Spacer(),
                  Icon(Icons.more_horiz),
                ],
              ),
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image.asset(
                      user.images.first,
                      width: MediaQuery.of(context).size.width * .50,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class UserStats extends StatelessWidget {
  const UserStats({
    super.key,
    required this.statTitle,
    required this.statValue,
  });

  final String statTitle;
  final String statValue;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          statTitle,
          style: const TextStyle(
            color: Color(0xFFC1C1C1),
          ),
        ),
        Text(
          statValue,
          style: const TextStyle(fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
