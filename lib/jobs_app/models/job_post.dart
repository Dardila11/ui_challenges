// ignore_for_file: public_member_api_docs, sort_constructors_first
class JobPost {
  JobPost({
    required this.companyName,
    required this.logoUrl,
    required this.roleTitle,
    required this.location,
    required this.roleType,
    required this.datePosted,
    required this.isBookMarked,
    required this.qualifications,
    required this.responsabilities,
    required this.about,
    required this.isRemote,
    required this.country,
  });

  String companyName;
  String logoUrl;
  String roleTitle;
  String location;
  String roleType;
  String datePosted;
  String country;
  bool isBookMarked;
  bool isRemote;
  String about;
  List<String> qualifications;
  List<String> responsabilities;
}

var jobPostList = <JobPost>[
  JobPost(
    companyName: 'Spotify',
    logoUrl: 'assets/jobs_app/images/chan.jpeg',
    roleTitle: 'Software Engineer',
    datePosted: '3 days ago',
    isBookMarked: true,
    location: 'New York, NY',
    roleType: 'Fulltime',
    qualifications: [
      "Bachelor's degree in Computer Science or related field",
      "2+ years' experience working as a developer writing code",
      "1+ years' experience in Flutter application development",
      "Experience using tools such as GitHub and JIRA",
    ],
    responsabilities: [
      "Develop cross-platform Flutter Apps from the ground up",
      "Maintain existing cross platform apps",
      "Write code and design systems using cross platform IDEs such as Visual Studio, Android Studio, Xcode and Flutter/Dart external packages",
      "Work collaboratively with project teams to execute technology solutions",
    ],
    about:
        "The Client brings creative solutions to health systems, self-funded employers, and insurance carriers and specialize in customized health care benefits administration. They thrive on finding solutions that fit their client's unique business requirements, demographics, and strategies",
    country: 'USA',
    isRemote: false,
  ),
  JobPost(
    logoUrl: 'assets/jobs_app/images/david.jpeg',
    roleTitle: 'Web Developer',
    companyName: 'Amazon',
    datePosted: '10 days ago',
    isBookMarked: false,
    location: 'Orlando, FL',
    roleType: 'Partime',
    qualifications: [
      "Bachelor's degree in Computer Science or related field",
      "2+ years' experience working as a developer writing code",
      "1+ years' experience in Flutter application development",
      "Experience using tools such as GitHub and JIRA",
    ],
    responsabilities: [
      "Develop cross-platform Flutter Apps from the ground up",
      "Maintain existing cross platform apps",
      "Write code and design systems using cross platform IDEs such as Visual Studio, Android Studio, Xcode and Flutter/Dart external packages",
      "Work collaboratively with project teams to execute technology solutions",
    ],
    about:
        "The Client brings creative solutions to health systems, self-funded employers, and insurance carriers and specialize in customized health care benefits administration. They thrive on finding solutions that fit their client's unique business requirements, demographics, and strategies",
    country: 'USA',
    isRemote: true,
  ),
  JobPost(
    logoUrl: 'assets/jobs_app/images/karen.jpeg',
    roleTitle: 'Product Manager',
    companyName: 'Google',
    datePosted: '8 days ago',
    isBookMarked: false,
    location: 'Virginia VI',
    roleType: 'Fulltime',
    qualifications: [
      "Bachelor's degree in Computer Science or related field",
      "2+ years' experience working as a developer writing code",
      "1+ years' experience in Flutter application development",
      "Experience using tools such as GitHub and JIRA",
    ],
    responsabilities: [
      "Develop cross-platform Flutter Apps from the ground up",
      "Maintain existing cross platform apps",
      "Write code and design systems using cross platform IDEs such as Visual Studio, Android Studio, Xcode and Flutter/Dart external packages",
      "Work collaboratively with project teams to execute technology solutions",
    ],
    about:
        "The Client brings creative solutions to health systems, self-funded employers, and insurance carriers and specialize in customized health care benefits administration. They thrive on finding solutions that fit their client's unique business requirements, demographics, and strategies",
    country: 'UK',
    isRemote: false,
  ),
  JobPost(
    logoUrl: 'assets/jobs_app/images/richard.jpeg',
    roleTitle: 'Senior Software Engineer',
    companyName: 'Greeny',
    datePosted: '15 days ago',
    isBookMarked: true,
    location: 'Washington, DC',
    roleType: 'Partime',
    qualifications: [
      "Bachelor's degree in Computer Science or related field",
      "2+ years' experience working as a developer writing code",
      "1+ years' experience in Flutter application development",
      "Experience using tools such as GitHub and JIRA",
    ],
    responsabilities: [
      "Develop cross-platform Flutter Apps from the ground up",
      "Maintain existing cross platform apps",
      "Write code and design systems using cross platform IDEs such as Visual Studio, Android Studio, Xcode and Flutter/Dart external packages",
      "Work collaboratively with project teams to execute technology solutions",
    ],
    about:
        'The Client brings creative solutions to health systems, self-funded employers, and insurance carriers and specialize in customized health care benefits administration. They thrive on finding solutions that fit their client\'s unique business requirements, demographics, and strategies',
    country: 'Canada',
    isRemote: true,
  ),
];
