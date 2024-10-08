import 'package:portofolio/models/skill_model.dart';
import 'package:portofolio/values/colors.dart';
import 'package:portofolio/values/styles.dart';
import 'package:flutter/material.dart';

class SkillCard extends StatefulWidget {
  final SkillModel skill;
  final double size;

  const SkillCard({
    super.key,
    required this.skill,
    required this.size,
  });

  @override
  State<SkillCard> createState() => _SkillCardState();
}

class _SkillCardState extends State<SkillCard> {
  Color color = kLightDarkColor;
  double height = 0.0;

  @override
  void initState() {
    height = widget.size;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        MouseRegion(
          onEnter: (_) {
            setState(
              () {
                if (MediaQuery.of(context).size.width >= 1320) {
                  color = const Color(0xff15202B);
                  if (height > 200) {
                    height = widget.size + 20.0;
                  } else {
                    height = 170;
                  }
                } else {
                  color = const Color(0xff15202B);
                }
              },
            );
          },
          onExit: (_) {
            setState(
              () {
                color = kLightDarkColor;
                height = widget.size;
              },
            );
          },
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 750),
            curve: Curves.bounceOut,
            height: height,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: color,
              boxShadow: [
                BoxShadow(
                  offset: const Offset(3, 5),
                  color: kBlackColor.withOpacity(.1),
                  blurRadius: 2.0,
                  spreadRadius: 2.0,
                ),
              ],
            ),
            child: Container(
              margin: const EdgeInsets.all(30.0),
              child: Image.network(
                widget.skill.iconUrl,
              ),
            ),
          ),
        ),
        Text(widget.skill.name, style: kMiniTitleTextStyleWhite),
        const SizedBox(),
        const SizedBox(),
      ],
    );
  }
}
