class User {
  User({
    required this.name,
    required this.username,
    required this.profileImage,
    required this.followers,
    required this.follows,
    required this.images,
  });
  final String name;
  final String username;
  final String profileImage;
  final int followers;
  final int follows;
  final List<String> images;
}

final users = <User>[
  User(
    name: 'Karen Nelson',
    username: 'karen_nelson',
    profileImage: 'assets/social_app/images/karen.jpeg',
    followers: 5000,
    follows: 250,
    images: [
      'assets/social_app/images/karen_1.jpeg',
      'assets/social_app/images/karen_2.jpeg',
      'assets/social_app/images/karen_3.jpeg',
      'assets/social_app/images/karen_4.jpeg',
    ],
  ),
  User(
    name: 'Richard Meyer',
    username: 'richard_meyer',
    profileImage: 'assets/social_app/images/richard.jpeg',
    followers: 1500,
    follows: 600,
    images: [
      'assets/social_app/images/richard_1.jpeg',
      'assets/social_app/images/richard_2.jpeg',
      'assets/social_app/images/richard_3.jpeg',
      'assets/social_app/images/richard_4.jpeg',
    ],
  ),
  User(
    name: 'David Smith',
    username: 'david_smith',
    profileImage: 'assets/social_app/images/david.jpeg',
    followers: 2400,
    follows: 3000,
    images: [
      'assets/social_app/images/karen_1.jpeg',
      'assets/social_app/images/karen_2.jpeg',
      'assets/social_app/images/karen_3.jpeg',
      'assets/social_app/images/karen_4.jpeg',
    ],
  ),
  User(
    name: 'Chan Ching',
    username: 'chan_ching',
    profileImage: 'assets/social_app/images/chan.jpeg',
    followers: 300,
    follows: 1250,
    images: [
      'assets/social_app/images/chan_1.jpeg',
      'assets/social_app/images/chan_2.jpeg',
      'assets/social_app/images/chan_3.jpeg',
      'assets/social_app/images/chan_4.jpeg',
    ],
  ),
];
