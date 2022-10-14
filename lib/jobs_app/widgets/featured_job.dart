import 'package:flutter/material.dart';
import 'package:ui_challenges/jobs_app/constants/theme.dart';
import 'package:ui_challenges/jobs_app/models/job_post.dart';

class FeaturedJob extends StatelessWidget {
  const FeaturedJob({
    Key? key,
    required this.screenHeight,
    required this.screenWidth,
    required this.job,
  }) : super(key: key);

  final double screenHeight;
  final double screenWidth;
  final JobPost job;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      margin: const EdgeInsets.only(right: 20),
      height: screenHeight * .50,
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
                        color: JobsAppTheme.orange,
                      )
                    : const Icon(
                        Icons.bookmark,
                        color: JobsAppTheme.orange,
                      ),
              )
            ],
          ),
          Text(
            job.companyName,
            style: JobsAppTheme.companyNameStyle,
          ),
          const SizedBox(height: 10),
          Text(
            job.roleTitle,
            softWrap: true,
            overflow: TextOverflow.ellipsis,
            style: JobsAppTheme.titleStyle,
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
                style: JobsAppTheme.locationStyle,
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
                style: ElevatedButton.styleFrom(
                    shape: const StadiumBorder(),
                    backgroundColor: JobsAppTheme.orange),
                onPressed: () {},
                child: const Text('Apply'),
              )
            ],
          )
        ],
      ),
    );
  }
}
