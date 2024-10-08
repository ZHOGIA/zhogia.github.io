import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:country_flags/country_flags.dart';
import 'package:portofolio/controllers/navigation_top_controller.dart';
import 'package:portofolio/locale/locale.g.dart';
import 'package:portofolio/utils/external_app_util.dart';
import 'package:portofolio/values/colors.dart';
import 'package:portofolio/values/strings.dart';
import 'package:portofolio/values/styles.dart';
import 'package:portofolio/views/mobile/sections/m_about_section.dart';
import 'package:portofolio/views/mobile/sections/m_contact_section.dart';
import 'package:portofolio/views/mobile/sections/m_home_section.dart';
import 'package:portofolio/views/mobile/sections/m_professional_experience_section.dart';
import 'package:portofolio/views/mobile/sections/m_skills_section.dart';
import 'package:portofolio/views/mobile/widgets/m_hover_container.dart';
import 'package:portofolio/widgets/custom_button_locale.dart';
import 'package:portofolio/widgets/text_hover_navigation_top.dart';
import 'package:portofolio/views/mobile/sections/m_footer_section.dart';
import 'package:portofolio/views/mobile/sections/m_projects_section.dart';
import 'package:portofolio/widgets/app_bar_icon.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class MobileBody extends StatefulWidget {
  const MobileBody({super.key});

  @override
  State<MobileBody> createState() => _MobileBodyState();
}

class _MobileBodyState extends State<MobileBody> {
  final mHomeKey = GlobalKey();
  final mAboutKey = GlobalKey();
  final mSkillsKey = GlobalKey();
  final mExperienceKey = GlobalKey();
  final mProjectKey = GlobalKey();
  final mContactKey = GlobalKey();
  final ScrollController _scrollController = ScrollController();
  final NavigationTopController _navigationTopController =
      NavigationTopController();
  late List<CustomButtonLocaleUtil> tabs;

  Future _scrollToItem(var sectionKey) async {
    final context = sectionKey.currentContext!;
    await Scrollable.ensureVisible(
      context,
      duration: const Duration(seconds: 2),
      curve: Curves.easeOutBack,
    );
  }

  @override
  Widget build(BuildContext context) {
    double _screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: kPrimaryColor,
        onPressed: () async {
          ExternalAppUtil.redirectToLink(url: linkWhatsApp);
        },
        child: Icon(
          MdiIcons.whatsapp,
          size: 30,
          color: kLightColor,
        ),
      ),
      drawer: Drawer(
        child: Container(
          padding: const EdgeInsets.only(bottom: 30),
          color: kGreyColor.withOpacity(.12),
          child: Column(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.all(30.0),
                      width: _screenWidth * 3 / 12,
                      height: _screenWidth * 4 / 12,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage("assets/drawer-profile.png"),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Fajar Muhammad Al-Hijri',
                          style: kMiniTitleTextStyleWhite.copyWith(
                            fontSize: 15,
                          ),
                        ),
                        Icon(
                          MdiIcons.leaf,
                          color: kPrimaryColor,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 1,
                        horizontal: 15,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextHoverNavigationTopUtil(
                            text: "${texts.general.language}: ",
                          ),
                          _navigationTopController.currentLocale ==
                                  _navigationTopController.id
                              ? CustomButtonLocaleUtil(
                                  hint: texts.general.indonesia,
                                  icon: CountryFlag.fromCountryCode("ID"),
                                  click: () async {
                                    _navigationTopController.changeLocale(
                                        _navigationTopController.en);
                                  },
                                )
                              : CustomButtonLocaleUtil(
                                  hint: texts.general.english,
                                  icon: CountryFlag.fromCountryCode("US"),
                                  click: () async {
                                    _navigationTopController.changeLocale(
                                        _navigationTopController.id);
                                  },
                                ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: ListView.builder(
                        itemCount: 6,
                        itemBuilder: (context, index) {
                          return MHoverContainer(
                            child: TextHoverNavigationTopUtil(
                              text: texts.tabs.tabs[index],
                            ),
                            onClick: () {
                              switch (index) {
                                case 0:
                                  _scrollToItem(mHomeKey);
                                  break;
                                case 1:
                                  _scrollToItem(mAboutKey);
                                  break;
                                case 2:
                                  _scrollToItem(mSkillsKey);
                                  break;
                                case 3:
                                  _scrollToItem(mExperienceKey);
                                  break;
                                case 4:
                                  _scrollToItem(mProjectKey);
                                  break;
                                case 5:
                                  _scrollToItem(mContactKey);
                                  break;
                              }
                              Navigator.pop(context);
                            },
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Center(
                  child: MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const CircleAvatar(
                        backgroundColor: kLightDarkColor,
                        radius: 25,
                        child: Icon(
                          Icons.close,
                          color: Colors.white,
                          size: 25,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          ListView.builder(
            controller: _scrollController,
            itemCount: 7,
            itemBuilder: (context, index) {
              switch (index) {
                case 0:
                  return MHomeSection(key: mHomeKey);
                case 1:
                  return MAboutSection(key: mAboutKey);
                case 2:
                  return MSkillsSection(key: mSkillsKey);
                case 3:
                  return MProfessionalExperienceSection(key: mExperienceKey);
                case 4:
                  return MProjectsSection(key: mProjectKey);
                case 5:
                  return MContactSection(key: mContactKey);
                case 6:
                  return const MFooterSection();
              }
              return null;
            },
          ),
          _mTopNavigationBar(),
        ],
      ),
    );
  }

  Positioned _mTopNavigationBar() {
    return Positioned(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: BlurryContainer(
          blur: 1.5,
          width: double.infinity,
          height: 60,
          elevation: 6,
          color: Colors.white.withOpacity(0.2),
          padding: const EdgeInsets.all(8),
          borderRadius: const BorderRadius.all(Radius.circular(45)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Builder(
                builder: (context) {
                  return AppBarIcon(
                    icon: MdiIcons.menu,
                    onClick: () => Scaffold.of(context).openDrawer(),
                  );
                },
              ),
              MouseRegion(
                cursor: SystemMouseCursors.click,
                child: InkWell(
                  borderRadius: BorderRadius.circular(64.0),
                  onTap: () {
                    _scrollToItem(mHomeKey);
                  },
                  child: const Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 2.0,
                      vertical: 2.0,
                    ),
                    child: CircleAvatar(
                      foregroundImage: AssetImage('assets/my-profile.jpg'),
                      backgroundColor: kLightDarkColor,
                    ),
                  ),
                ),
              ),
              AppBarIcon(
                icon: MdiIcons.linkedin,
                onClick: () =>
                    ExternalAppUtil.redirectToLink(url: linkLinkedin),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
