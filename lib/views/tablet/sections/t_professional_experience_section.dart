import 'package:portofolio/controllers/experience_controller.dart';
import 'package:portofolio/locale/locale.g.dart';
import 'package:portofolio/utils/external_app_util.dart';
import 'package:portofolio/values/colors.dart';
import 'package:portofolio/values/styles.dart';
import 'package:portofolio/widgets/title_section.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:time_machine/time_machine.dart';

class TProfessionalExperienceSection extends StatelessWidget {
  final bool isTabMode;

  const TProfessionalExperienceSection({super.key, required this.isTabMode});

  @override
  Widget build(BuildContext context) {
    double _screenWidth = MediaQuery.of(context).size.width;
    double _screenHeight = MediaQuery.of(context).size.height;

    ExperienceController experienceController = ExperienceController();
    experienceController.workExperience
        .sort((a, b) => b.startDate.compareTo(a.startDate));

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: isTabMode ? 90.0 : _screenWidth * .1172,
        vertical: isTabMode ? 50.0 : _screenHeight * .065,
      ),
      width: double.infinity,
      child: Column(
        children: [
          TitleSection(
            title: texts.general.title_experience_section,
            isDesktop: true,
          ),
          experienceController.workExperience.isEmpty
              ? const CircularProgressIndicator()
              : ExpansionPanelList.radio(
                  materialGapSize: 0.0,
                  children: experienceController.workExperience
                      .map(
                        (work) => ExpansionPanelRadio(
                          backgroundColor: kDarkColor,
                          canTapOnHeader: true,
                          value: work.id!,
                          headerBuilder: ((context, isExpanded) {
                            LocalDate dateWork;
                            if (work.worksHere) {
                              dateWork = LocalDate.today();
                            } else {
                              dateWork = LocalDate.dateTime(DateTime.parse(
                                  work.endDate ?? '1970-01-01T00:00:00Z'));
                            }
                            LocalDate startWorkByDate = LocalDate.dateTime(
                                DateTime.parse(work.startDate));
                            Period countPeriodByDate =
                                dateWork.periodSince(startWorkByDate);
                            return MouseRegion(
                              onEnter: (_) => experienceController
                                  .triggerAnimation(work.id!, true),
                              onExit: (_) => experienceController
                                  .triggerAnimation(work.id!, false),
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Flexible(
                                          child: Text(
                                            work.position,
                                            style: const TextStyle(
                                              color: kLightColor,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(width: 10),
                                        GestureDetector(
                                          onTap: () async {
                                            ExternalAppUtil.redirectToLink(
                                              url: 'https://${work.siteUrl}',
                                            );
                                          },
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                children: [
                                                  const Text(
                                                    '@',
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      letterSpacing: 1,
                                                    ),
                                                  ),
                                                  const SizedBox(width: 5),
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        work.company,
                                                        style: const TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          letterSpacing: 1,
                                                          fontSize: 16,
                                                        ),
                                                      ),
                                                      AnimatedContainer(
                                                        duration:
                                                            const Duration(
                                                                milliseconds:
                                                                    750),
                                                        curve: Curves.bounceOut,
                                                        height: 2,
                                                        width: work.isHovered
                                                            ? 160.0
                                                            : 50,
                                                      ),
                                                    ],
                                                  ),
                                                  Container(
                                                    margin:
                                                        const EdgeInsets.only(
                                                      left: 10,
                                                    ),
                                                    padding: const EdgeInsets
                                                        .symmetric(
                                                      horizontal: 8,
                                                      vertical: 4,
                                                    ),
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                        5.0,
                                                      ),
                                                    ),
                                                    child: Text(
                                                      work.empType,
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 10),
                                    Row(
                                      children: [
                                        const Icon(
                                          Icons.timer_rounded,
                                          size: 16,
                                        ),
                                        const SizedBox(width: 8),
                                        Text(
                                          '${DateFormat.yMMM().format(DateTime.parse(work.startDate))} - ${work.worksHere ? 'Present' : DateFormat.yMMM().format(DateTime.parse(work.endDate ?? '1970-01-01T00:00:00Z'))}',
                                          style: kNormalTextStyleGrey.copyWith(
                                            fontSize: 12,
                                          ),
                                        ),
                                        Container(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 6.0),
                                          child: Icon(
                                            MdiIcons.circle,
                                            size: 8,
                                          ),
                                        ),
                                        Text(
                                          countPeriodByDate.years == 0
                                              ? '${countPeriodByDate.months} ${countPeriodByDate.months >= 2 ? 'months' : 'month'} ${countPeriodByDate.days} days'
                                              : '${countPeriodByDate.years} ${countPeriodByDate.years >= 2 ? 'years' : 'year'} ${countPeriodByDate.months} months ${countPeriodByDate.days} days',
                                          style: kNormalTextStyleGrey.copyWith(
                                            fontSize: 12,
                                          ),
                                        ),
                                        const SizedBox(width: 12),
                                        Icon(
                                          MdiIcons.mapMarker,
                                          size: 16,
                                        ),
                                        const SizedBox(width: 8),
                                        Text(
                                          '${work.state}, ${work.country}.',
                                          style: kNormalTextStyleGrey.copyWith(
                                            fontSize: 12,
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            );
                          }),
                          body: Column(
                            children: work.workDone
                                .map(
                                  (description) => Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 15, vertical: 5),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const SizedBox(width: 7),
                                        Expanded(
                                          child: Text(
                                            description,
                                            style:
                                                kNormalTextStyleGrey.copyWith(
                                              fontSize: 14,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                                .toList(),
                          ),
                        ),
                      )
                      .toList(),
                ),
        ],
      ),
    );
  }
}
