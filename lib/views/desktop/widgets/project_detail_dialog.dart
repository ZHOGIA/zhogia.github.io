import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portofolio/models/project_model.dart';
import 'package:portofolio/values/colors.dart';
import 'package:portofolio/widgets/custom_chip.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:portofolio/widgets/project_icon_btn.dart';

class ProjectDetailDialog extends StatelessWidget {
  final ProjectModel project;

  const ProjectDetailDialog({super.key, required this.project});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    bool isMobile = screenWidth < 800;

    return Dialog(
      backgroundColor: Colors.transparent,
      elevation: 0,
      insetPadding: EdgeInsets.symmetric(
        horizontal: isMobile ? 10 : screenWidth * 0.1,
        vertical: isMobile ? 20 : screenHeight * 0.05,
      ),
      child: Container(
        width: isMobile ? screenWidth : (screenWidth > 1100 ? 1000 : screenWidth * 0.9),
        height: screenHeight * 0.9,
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          color: const Color(0xff0a0a0a), // Very dark background
          borderRadius: BorderRadius.circular(24),
          border: Border.all(color: Colors.white.withOpacity(0.1), width: 1),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.5),
              blurRadius: 30,
              spreadRadius: 10,
            ),
          ],
        ),
        child: Stack(
          children: [
            // Background Image with Blur
            Positioned.fill(
              child: Opacity(
                opacity: 0.3,
                child: Image.network(
                  project.cover,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) => Container(
                    color: const Color(0xff1a1a1a),
                  ),
                ),
              ),
            ),
             // Gradient Overlay (Top to Bottom)
            Positioned.fill(
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      const Color(0xff0a0a0a).withOpacity(0.8),
                      const Color(0xff0a0a0a).withOpacity(0.95),
                      const Color(0xff0a0a0a),
                    ],
                    stops: const [0.0, 0.4, 1.0],
                  ),
                ),
              ),
            ),
             // Accent Gradient (Top Left)
            Positioned(
              top: -100,
              left: -100,
              child: Container(
                width: 400,
                height: 400,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: RadialGradient(
                    colors: [
                       kPrimaryColor.withOpacity(0.3),
                      Colors.transparent,
                    ],
                  ),
                ),
              ),
            ),

            // Content
            Column(
              children: [
                // Header (Close Button)
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                        onPressed: () => Navigator.of(context).pop(),
                        style: IconButton.styleFrom(
                          backgroundColor: Colors.white.withOpacity(0.1),
                          hoverColor: Colors.white.withOpacity(0.2),
                        ),
                        icon: const Icon(Icons.close, color: Colors.white),
                      ),
                    ],
                  ),
                ),

                Expanded(
                  child: SingleChildScrollView(
                    padding: EdgeInsets.symmetric(
                      horizontal: isMobile ? 24 : 60,
                      vertical: 10,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Tags / Type
                         Container(
                          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                          decoration: BoxDecoration(
                            color: kPrimaryColor.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: kPrimaryColor.withOpacity(0.3)),
                          ),
                          child: Text(
                            project.type.toUpperCase(),
                            style: GoogleFonts.robotoMono(
                              color: kPrimaryColor,
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 1.2,
                            ),
                          ),
                        ),
                        const SizedBox(height: 24),
                        
                        // Title
                        Text(
                          project.name,
                          style: GoogleFonts.outfit(
                            fontSize: isMobile ? 36 : 56,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            height: 1.1,
                          ),
                        ),
                        const SizedBox(height: 32),

                        // Main Content Grid
                        isMobile 
                          ? _buildMobileContent() 
                          : _buildDesktopContent(screenWidth),
                         
                         const SizedBox(height: 60),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDesktopContent(double screenWidth) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Left Column: Description & Article
        Expanded(
          flex: 7,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "About Project",
                style: GoogleFonts.robotoMono(
                   color: Colors.grey[500],
                   fontSize: 14,
                   letterSpacing: 2,
                   fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 16),
              Text(
                project.article.isNotEmpty ? project.article : project.description,
                style: GoogleFonts.inter(
                  color: Colors.grey[300],
                  fontSize: 18,
                  height: 1.6,
                  fontWeight: FontWeight.w300,
                ),
              ),
               const SizedBox(height: 48),
               
               if (project.images.isNotEmpty) ...[
                 Text(
                "GALLERY",
                style: GoogleFonts.robotoMono(
                   color: Colors.grey[500],
                   fontSize: 14,
                   letterSpacing: 2,
                   fontWeight: FontWeight.w600,
                ),
              ),
                const SizedBox(height: 20),
                GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                    childAspectRatio: 16/9,
                  ),
                  itemCount: project.images.length,
                  itemBuilder: (context, index) {
                    return ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white.withOpacity(0.1)),
                        ),
                        child: Image.network(
                          project.images[index],
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                ),
               ],
            ],
          ),
        ),
        
        const SizedBox(width: 60),

        // Right Column: Tech & Links
        Expanded(
          flex: 4,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               _buildSectionHeader("TECHNOLOGIES"),
               const SizedBox(height: 16),
               Wrap(
                spacing: 10,
                runSpacing: 10,
                children: project.tech.map((tech) => 
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.05),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.white.withOpacity(0.1)),
                    ),
                    child: Text(
                      tech,
                      style: GoogleFonts.inter(
                        color: Colors.grey[300],
                        fontSize: 14,
                      ),
                    ),
                  )
                ).toList(),
              ),
              
              const SizedBox(height: 40),
              
              _buildSectionHeader("LINKS"),
              const SizedBox(height: 16),
              _buildLinks(),
              
               const SizedBox(height: 40),
               // Thumbnail
               ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Container(
                  decoration: BoxDecoration(
                     border: Border.all(color: Colors.white.withOpacity(0.1)),
                  ),
                  child: Image.network(
                    project.cover,
                    fit: BoxFit.cover,
                  ),
                ),
               ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildMobileContent() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Description
        Text(
          project.article.isNotEmpty ? project.article : project.description,
          style: GoogleFonts.inter(
            color: Colors.grey[300],
            fontSize: 16,
            height: 1.6,
            fontWeight: FontWeight.w300,
          ),
        ),
        const SizedBox(height: 40),
        
        // Tech
        _buildSectionHeader("TECHNOLOGIES"),
        const SizedBox(height: 16),
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: project.tech.map((tech) => 
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.05),
                borderRadius: BorderRadius.circular(20),
                 border: Border.all(color: Colors.white.withOpacity(0.1)),
              ),
              child: Text(
                tech,
               style: GoogleFonts.inter(
                  color: Colors.grey[300],
                  fontSize: 13,
                ),
              ),
            )
          ).toList(),
        ),
        
        const SizedBox(height: 40),
        
        // Links
        _buildSectionHeader("LINKS"),
        const SizedBox(height: 16),
        _buildLinks(),
        
        const SizedBox(height: 40),
         if (project.images.isNotEmpty) ...[
                 _buildSectionHeader("GALLERY"),
                const SizedBox(height: 20),
                ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: project.images.length,
                  separatorBuilder: (ctx, i) => const SizedBox(height: 16),
                  itemBuilder: (context, index) {
                    return ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                       child: Container(
                         decoration: BoxDecoration(
                          border: Border.all(color: Colors.white.withOpacity(0.1)),
                        ),
                         child: Image.network(
                          project.images[index],
                          fit: BoxFit.cover,
                                                 ),
                       ),
                    );
                  },
                ),
               ],
      ],
    );
  }

  Widget _buildSectionHeader(String title) {
    return Text(
      title,
      style: GoogleFonts.robotoMono(
        color: Colors.grey[500],
        fontSize: 12,
        letterSpacing: 2,
        fontWeight: FontWeight.w600,
      ),
    );
  }

  Widget _buildLinks() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        if (project.githubLink.isNotEmpty)
          _buildLinkButton(MdiIcons.github, project.githubLink),
        if (project.externalLink.isNotEmpty) ...[
          const SizedBox(width: 12),
          _buildLinkButton(MdiIcons.link, project.externalLink),
        ],
        if (project.playstoreLink.isNotEmpty) ...[
           const SizedBox(width: 12),
          _buildLinkButton(MdiIcons.googlePlay, project.playstoreLink),
        ],
      ],
    );
  }

  Widget _buildLinkButton(IconData icon, String url) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.05),
        shape: BoxShape.circle,
        border: Border.all(color: Colors.white.withOpacity(0.1)),
      ),
      child: ProjectIconBtn(
        icon: icon,
        link: url,
        padding: 12,
      ),
    );
  }
}
