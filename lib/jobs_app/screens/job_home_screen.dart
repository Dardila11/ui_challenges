import 'package:flutter/material.dart';
import 'package:ui_challenges/jobs_app/constants/theme.dart';
import 'package:ui_challenges/jobs_app/models/job_post.dart';
import 'package:ui_challenges/jobs_app/widgets/featured_job.dart';
import 'package:ui_challenges/jobs_app/widgets/recent_job.dart';
import 'package:ui_challenges/jobs_app/widgets/search_box.dart';

import '../widgets/categories_list.dart';

class JobPostsHomeScreen extends StatelessWidget {
  const JobPostsHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        leading: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: CircleAvatar(
            child: ClipOval(
              child: Image.asset('assets/jobs_app/images/ash.jpeg'),
            ),
          ),
        ),
        title: const Text('Mary R. Arnold'),
        centerTitle: false,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.message_rounded),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SearchBox(),
              const CategoriesList(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Featured Jobs',
                        style: JobsAppTheme.titleStyle,
                      ),
                      Text('View All'),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: screenHeight * .28,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: jobPostList.length,
                  itemBuilder: (context, index) {
                    JobPost job = jobPostList[index];
                    return FeaturedJob(
                      screenHeight: screenHeight,
                      screenWidth: screenWidth,
                      job: job,
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Recent Jobs Jobs',
                        style: JobsAppTheme.titleStyle,
                      ),
                      Text('View All'),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: screenHeight * .28,
                child: ListView.builder(
                  itemCount: jobPostList.length,
                  itemBuilder: (context, index) {
                    JobPost job = jobPostList[index];
                    return RecentJob(
                      screenHeight: screenHeight,
                      screenWidth: screenWidth,
                      job: job,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
