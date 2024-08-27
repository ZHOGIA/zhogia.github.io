import 'package:portofolio/utils/external_app_util.dart';
import 'package:portofolio/values/colors.dart';
import 'package:portofolio/views/desktop/widgets/icon_hover.dart';
import 'package:flutter/material.dart';

class ProjectIconBtn extends StatelessWidget {
  final IconData icon;
  final String link;
  final double? padding;
  final bool isTablet;

  const ProjectIconBtn({
    super.key,
    required this.icon,
    required this.link,
    this.padding,
    bool? isTablet,
  }) : isTablet = isTablet ?? false;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: isTablet ? true : link.isNotEmpty,
      child: IconHoverUtil(
        icon: icon,
        color: kPrimaryColor,
        click: () => {
          if (link.isNotEmpty) ExternalAppUtil.redirectToLink(url: link),
        },
        padding: padding ?? 0,
      ),
    );
  }
}
