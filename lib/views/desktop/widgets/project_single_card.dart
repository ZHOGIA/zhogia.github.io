import 'package:flutter/material.dart';
import 'package:portofolio/models/project_model.dart';
import 'package:portofolio/values/styles.dart';

class SingleProjectCard extends StatelessWidget {
  final ProjectModel project;

  const SingleProjectCard({super.key, required this.project});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: screenWidth <= 1366 ? 210 : 300,
              width: double.infinity,
              decoration: BoxDecoration(
                // color: klightDarkColor,
                image: DecorationImage(
                  image: NetworkImage(project.cover),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  project.name,
                  style: kMiniTitleTextStyleGreen.copyWith(fontSize: 18),
                ),
                Text(
                  project.description,
                  style: kNormalTextStyleGrey,
                  maxLines: 8,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
