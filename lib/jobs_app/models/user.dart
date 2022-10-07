class User {
  User(
      {required this.name,
      required this.imageUrl,
      required this.roleTitle,
      required this.companyName});
  String name;
  String imageUrl;
  String roleTitle;
  String companyName;
}

var usersList = <User>[
  User(
      name: 'Robert D. Beebe',
      imageUrl: 'assets/jobs_app/images/chan.jpeg',
      roleTitle: 'Software Engineer',
      companyName: 'Brits'),
  User(
      name: 'Lynn Taylor',
      imageUrl: 'assets/jobs_app/images/david.jpeg',
      roleTitle: 'Web Developer',
      companyName: 'Amazon'),
  User(
      name: 'Chris Tiagolo',
      imageUrl: 'assets/jobs_app/images/karen.jpeg',
      roleTitle: 'Product Manager',
      companyName: 'Google'),
  User(
      name: 'Richard Perez ',
      imageUrl: 'assets/jobs_app/images/richard.jpeg',
      roleTitle: 'Senior Software Engineer',
      companyName: 'Greeny'),
];
