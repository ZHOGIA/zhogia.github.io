import 'package:portofolio/controllers/projects_controller.dart';
import 'package:portofolio/locale/locale.g.dart';
import 'package:portofolio/values/colors.dart';
import 'package:portofolio/views/tablet/widgets/t_project_card.dart';
import 'package:portofolio/widgets/title_section.dart';
import 'package:flutter/material.dart';

class TProjectSection extends StatelessWidget {
  const TProjectSection({super.key});

  @override
  Widget build(BuildContext context) {
    ProjectsController _projectController = ProjectsController();
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 90.0, vertical: 50.0),
      width: double.infinity,
      color: kDarkColor,
      child: Column(
        children: [
          TitleSection(
              title: texts.general.title_project_section, isDesktop: false),
          ListView.builder(
            itemBuilder: (context, index) {
              return TProjectCard(
                project: _projectController.projects[index],
              );
            },
            itemCount: _projectController.projects.isEmpty
                ? 0
                : _projectController.projects.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
          ),
          const SizedBox(
            height: 20.0,
          ),
        ],
      ),
    );
  }
}
