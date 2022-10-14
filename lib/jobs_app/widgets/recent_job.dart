import 'package:flutter/material.dart';
import 'package:ui_challenges/jobs_app/constants/theme.dart';
import 'package:ui_challenges/jobs_app/models/job_post.dart';

class RecentJob extends StatelessWidget {
  const RecentJob({
    super.key,
    required this.screenHeight,
    required this.screenWidth,
    required this.job,
  });

  final double screenHeight;
  final double screenWidth;
  final JobPost job;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(0, 10, 8, 10),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      height: screenHeight * .30,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                child: ClipOval(child: Image.asset(job.logoUrl)),
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    job.roleTitle,
                    style: JobsAppTheme.titleStyle,
                  ),
                  Text(
                    job.location,
                    style: JobsAppTheme.locationStyle,
                  )
                ],
              ),
              const Spacer(),
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
          Row(
            children: [
              Chip(
                backgroundColor: Colors.grey.shade100,
                label: Text(job.roleType),
              ),
              const SizedBox(width: 5),
              job.isRemote
                  ? Chip(
                      backgroundColor: Colors.grey.shade100,
                      label: const Text('Remote'),
                    )
                  : Container(),
              const SizedBox(width: 5),
              Chip(
                backgroundColor: Colors.grey.shade100,
                label: Text(job.datePosted),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Text('10 years'),
              const SizedBox(width: 10),
              Text(job.country),
              const Spacer(),
              OutlinedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  side: const BorderSide(
                    color: JobsAppTheme.orange,
                  ),
                  shape: const StadiumBorder(),
                ),
                child: const Text(
                  'Apply',
                  style: TextStyle(
                    color: JobsAppTheme.orange,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
