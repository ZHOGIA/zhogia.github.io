import 'package:portofolio/models/project_model.dart';
import 'package:portofolio/values/colors.dart';
import 'package:portofolio/widgets/custom_chip.dart';
import 'package:portofolio/widgets/project_icon_btn.dart';
import 'package:portofolio/views/desktop/widgets/project_detail_dialog.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class ProjectCard extends StatefulWidget {
  final ProjectModel project;

  const ProjectCard({
    super.key,
    required this.project,
  });

  @override
  State<ProjectCard> createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCard> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    double screenWidth = MediaQuery.of(context).size.width;

    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: GestureDetector(
        onTap: () {
          showDialog(
            context: context,
            builder: (context) => ProjectDetailDialog(project: widget.project),
          );
        },
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeOutCubic,
          margin: const EdgeInsets.symmetric(vertical: 20),
          width: double.infinity,
          height: 350,
          transform: Matrix4.translationValues(0, _isHovered ? -5 : 0, 0),
          decoration: BoxDecoration(
            color: const Color(0xff0a0a0a),
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: _isHovered 
                  ? kPrimaryColor.withOpacity(0.5) 
                  : Colors.white.withOpacity(0.05),
              width: 1,
            ),
            boxShadow: [
              BoxShadow(
                color: _isHovered 
                    ? kPrimaryColor.withOpacity(0.15) 
                    : Colors.black.withOpacity(0.5),
                blurRadius: _isHovered ? 30 : 20,
                spreadRadius: _isHovered ? 2 : 0,
                offset: const Offset(0, 10),
              ),
            ],
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Image Section
              Expanded(
                flex: 5,
                child: Stack(
                  children: [
                    // Image with gradient overlay
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                      ),
                      child: Stack(
                        fit: StackFit.expand,
                        children: [
                          Image.network(
                            widget.project.cover,
                            fit: BoxFit.cover,
                            errorBuilder: (context, error, stackTrace) => Container(
                              color: const Color(0xff1a1a1a),
                              child: Center(
                                child: Icon(
                                  Icons.image_not_supported_outlined,
                                  color: Colors.white.withOpacity(0.1),
                                  size: 50,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.centerRight,
                                end: Alignment.centerLeft,
                                colors: [
                                  const Color(0xff0a0a0a),
                                  const Color(0xff0a0a0a).withOpacity(0.0),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              // Content Section
              Expanded(
                flex: 7,
                child: Padding(
                  padding: const EdgeInsets.all(32.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Subtitle / Type
                      Text(
                        widget.project.type.toUpperCase(),
                        style: GoogleFonts.robotoMono(
                          color: kPrimaryColor,
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 1.5,
                        ),
                      ),
                      const SizedBox(height: 12),
                      
                      // Title
                      Text(
                        widget.project.name,
                        style: GoogleFonts.outfit(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          height: 1.1,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 16),
                      
                      // Description
                      Text(
                        widget.project.description,
                        style: GoogleFonts.inter(
                          color: Colors.grey[400],
                          fontSize: 16,
                          height: 1.5,
                        ),
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                      ),
                      
                      const Spacer(),

                      // Technologies
                      Wrap(
                        spacing: 8,
                        runSpacing: 8,
                        children: widget.project.tech.take(4).map((tech) => 
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.05),
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(color: Colors.white.withOpacity(0.1)),
                            ),
                            child: Text(
                              tech,
                              style: GoogleFonts.inter(
                                color: Colors.grey[400],
                                fontSize: 12,
                              ),
                            ),
                          )
                        ).toList(),
                      ),
                      
                      const SizedBox(height: 24),
                      
                      // Action Buttons
                      Row(
                        children: [
                          if (widget.project.githubLink.isNotEmpty)
                             _buildIconButton(MdiIcons.github, widget.project.githubLink),
                          if (widget.project.externalLink.isNotEmpty) ...[
                            const SizedBox(width: 12),
                            _buildIconButton(MdiIcons.arrowTopRight, widget.project.externalLink),
                          ],
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildIconButton(IconData icon, String url) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.transparent,
        shape: BoxShape.circle,
        border: Border.all(color: Colors.white.withOpacity(0.2)),
      ),
      child: ProjectIconBtn(
        icon: icon,
        link: url,
        padding: 10,
      ),
    );
  }
}
