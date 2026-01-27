import 'package:portofolio/values/colors.dart';
import 'package:portofolio/widgets/custom_chip.dart';
import 'package:portofolio/widgets/project_icon_btn.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portofolio/models/project_model.dart';
import 'package:portofolio/views/desktop/widgets/project_detail_dialog.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class MProjectSingleCard extends StatelessWidget {
  final ProjectModel project;

  const MProjectSingleCard({
    super.key,
    required this.project,
  });

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final double screenWidth = MediaQuery.of(context).size.width;
    
    return GestureDetector(
      onTap: () {
        showDialog(
          context: context,
          builder: (context) => ProjectDetailDialog(project: project),
        );
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 30.0),
        decoration: BoxDecoration(
          color: const Color(0xff0a0a0a),
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.white.withOpacity(0.05)),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.5),
              blurRadius: 10,
              offset: const Offset(0, 5),
            ),
          ],
        ),
        clipBehavior: Clip.antiAlias,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image Section
            Stack(
              children: [
                SizedBox(
                  height: 200,
                  width: double.infinity,
                  child: Image.network(
                    project.cover,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) => Container(
                      color: const Color(0xff1a1a1a),
                      child: Center(
                        child: Icon(
                          Icons.image_not_supported_outlined,
                          color: Colors.white.withOpacity(0.1),
                          size: 40,
                        ),
                      ),
                    ),
                  ),
                ),
                // Gradient Overlay
                Positioned.fill(
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [
                          const Color(0xff0a0a0a),
                          const Color(0xff0a0a0a).withOpacity(0.0),
                        ],
                      ),
                    ),
                  ),
                ),
                // Type Badge
                Positioned(
                  top: 16,
                  right: 16,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.6),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.white.withOpacity(0.1)),
                    ),
                    child: Text(
                      project.type.toUpperCase(),
                      style: GoogleFonts.robotoMono(
                        color: kPrimaryColor,
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            
            // Content
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    project.name,
                    style: GoogleFonts.outfit(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      height: 1.2,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    project.description,
                    style: GoogleFonts.inter(
                      color: Colors.grey[400],
                      fontSize: 14,
                      height: 1.5,
                    ),
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 20),
                  
                  // Tech & Actions
                  Row(
                    children: [
                      Expanded(
                        child: Wrap(
                          spacing: 6,
                          runSpacing: 6,
                          children: project.tech.take(3).map((tech) => 
                            Container(
                              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                              decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.05),
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(color: Colors.white.withOpacity(0.1)),
                              ),
                              child: Text(
                                tech,
                                style: GoogleFonts.inter(
                                  color: Colors.grey[400],
                                  fontSize: 10,
                                ),
                              ),
                            )
                          ).toList(),
                        ),
                      ),
                      
                      // Action Buttons (Condensed)
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          if (project.githubLink.isNotEmpty) ...[
                             _buildIconButton(MdiIcons.github, project.githubLink),
                             const SizedBox(width: 8),
                          ],
                          if (project.externalLink.isNotEmpty)
                             _buildIconButton(MdiIcons.arrowTopRight, project.externalLink),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildIconButton(IconData icon, String url) {
    return Container(
      width: 36,
      height: 36,
      decoration: BoxDecoration(
        color: Colors.transparent,
        shape: BoxShape.circle,
        border: Border.all(color: Colors.white.withOpacity(0.1)),
      ),
      child: ProjectIconBtn(
        icon: icon,
        link: url,
        padding: 8,
      ),
    );
  }
}
