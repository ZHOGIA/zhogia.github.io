import 'package:portofolio/models/project_model.dart';
import 'package:portofolio/values/colors.dart';
import 'package:portofolio/widgets/project_icon_btn.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portofolio/views/desktop/widgets/project_detail_dialog.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class TProjectCard extends StatefulWidget {
  final ProjectModel project;

  const TProjectCard({super.key, required this.project});

  @override
  _TProjectCardState createState() => _TProjectCardState();
}

class _TProjectCardState extends State<TProjectCard> {
  // ignore: unused_field
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    double screenWidth = MediaQuery.of(context).size.width;
    
    return GestureDetector(
      onTap: () {
        showDialog(
          context: context,
          builder: (context) => ProjectDetailDialog(project: widget.project),
        );
      },
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        onEnter: (_) => setState(() => _isHovered = true),
        onExit: (_) => setState(() => _isHovered = false),
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 20),
          width: double.infinity,
          height: 380,
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
          child: Stack(
            children: [
              // Background Image with Gradient
              Positioned.fill(
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
                            size: 60,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.transparent,
                            const Color(0xff0a0a0a).withOpacity(0.9),
                            const Color(0xff0a0a0a),
                          ],
                          stops: const [0.0, 0.6, 1.0],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              
              // Content
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    // Type
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                      decoration: BoxDecoration(
                        color: kPrimaryColor.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: kPrimaryColor.withOpacity(0.3)),
                      ),
                      child: Text(
                        widget.project.type.toUpperCase(),
                        style: GoogleFonts.robotoMono(
                          color: kPrimaryColor,
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.0,
                        ),
                      ),
                    ),
                    const SizedBox(height: 12),
                    
                    // Name
                    Text(
                      widget.project.name,
                      style: GoogleFonts.outfit(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        height: 1.2,
                      ),
                    ),
                    const SizedBox(height: 8),
                    
                    // Description
                    Text(
                      widget.project.description,
                      style: GoogleFonts.inter(
                        color: Colors.grey[400],
                        fontSize: 14,
                        height: 1.5,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 20),
                    
                    // Footer (Tech + Links)
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Wrap(
                            spacing: 8,
                            runSpacing: 8,
                            children: widget.project.tech.take(3).map((tech) => 
                              Text(
                                "#$tech",
                                style: GoogleFonts.robotoMono(
                                  color: Colors.grey[500],
                                  fontSize: 12,
                                ),
                              )
                            ).toList(),
                          ),
                        ),
                        Row(
                          children: [
                             if (widget.project.githubLink.isNotEmpty)
                               _buildIconButton(MdiIcons.github, widget.project.githubLink),
                             if (widget.project.externalLink.isNotEmpty) ...[
                               const SizedBox(width: 10),
                               _buildIconButton(MdiIcons.arrowTopRight, widget.project.externalLink),
                             ],
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
      ),
    );
  }

  Widget _buildIconButton(IconData icon, String url) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.1),
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
