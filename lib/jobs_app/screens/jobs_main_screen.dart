import 'package:flutter/material.dart';
import 'package:ui_challenges/jobs_app/screens/job_detail_screen.dart';
import 'package:ui_challenges/jobs_app/screens/job_home_screen.dart';

class JobsMainScreen extends StatefulWidget {
  const JobsMainScreen({super.key});

  @override
  State<JobsMainScreen> createState() => _JobsMainScreenState();
}

class _JobsMainScreenState extends State<JobsMainScreen> {
  static const List<Widget> screens = [
    JobPostsHomeScreen(),
    JobDetailScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens.first,
      bottomNavigationBar: Container(
        color: Colors.white,
        width: MediaQuery.of(context).size.width,
        height: kBottomNavigationBarHeight,
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(
              left: MediaQuery.of(context).size.width * .43,
              bottom: kBottomNavigationBarHeight * .50,
              child: FloatingActionButton(
                onPressed: () {},
                backgroundColor: const Color(0xFFFF775A),
                elevation: 0,
                child: const Icon(
                  Icons.add,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.home_filled,
                    size: 32,
                    color: Color(0xFFFF775A),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.people,
                    size: 32,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(width: 20),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.email,
                    size: 32,
                    color: Colors.grey,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.account_balance,
                    size: 32,
                    color: Colors.grey,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
