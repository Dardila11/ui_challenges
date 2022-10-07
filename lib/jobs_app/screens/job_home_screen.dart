import 'package:flutter/material.dart';
import 'package:ui_challenges/jobs_app/models/job_post.dart';
import 'package:ui_challenges/jobs_app/widgets/category_chip.dart';
import 'package:ui_challenges/jobs_app/widgets/search_box.dart';

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
        child: Column(
          children: [
            const SearchBox(),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 50,
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: const [
                  CategoryChip(
                    icon: Icon(Icons.note),
                    name: 'Design',
                    isSelected: false,
                  ),
                  SizedBox(width: 10),
                  CategoryChip(
                    icon: Icon(Icons.note),
                    name: 'Tech',
                    isSelected: false,
                  ),
                  SizedBox(width: 10),
                  CategoryChip(
                    icon: Icon(Icons.note),
                    name: 'Business',
                    isSelected: false,
                  ),
                  SizedBox(width: 10),
                  CategoryChip(
                    icon: Icon(Icons.note),
                    name: 'Marketing',
                    isSelected: false,
                  ),
                  SizedBox(width: 10),
                  CategoryChip(
                    icon: Icon(Icons.note),
                    name: 'Nursing',
                    isSelected: false,
                  ),
                  SizedBox(width: 10),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text('Featured Jobs'),
                    Text('View All'),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: screenWidth * .60,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: jobPostList.length,
                itemBuilder: (context, index) {
                  JobPost job = jobPostList[index];
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    margin: const EdgeInsets.only(right: 20),
                    height: screenHeight * .30,
                    width: screenWidth * .50,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CircleAvatar(
                              child: ClipOval(child: Image.asset(job.logoUrl)),
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: job.isBookMarked
                                    ? const Icon(
                                        Icons.bookmark_added,
                                        color: Color(0xFFFF775A),
                                      )
                                    : const Icon(
                                        Icons.bookmark,
                                        color: Color(0xFFFF775A),
                                      ))
                          ],
                        ),
                        Text(
                          job.companyName,
                          style: TextStyle(color: Colors.grey.shade700),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          job.roleTitle,
                          style: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 5),
                        Row(
                          children: [
                            const Icon(
                              Icons.location_pin,
                              size: 16,
                              color: Colors.grey,
                            ),
                            Text(
                              job.location,
                              style: TextStyle(color: Colors.grey.shade400),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Chip(
                          backgroundColor: Colors.grey.shade100,
                          label: Text(job.roleType),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(job.datePosted),
                            ElevatedButton(
                                onPressed: () {}, child: const Text('Apply'))
                          ],
                        )
                      ],
                    ),
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
                    Text('Recent Jobs Jobs'),
                    Text('View All'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
