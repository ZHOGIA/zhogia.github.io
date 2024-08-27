import 'dart:ui';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:portofolio/locale/locale.g.dart';

class NavigationTopController {
  AppLocale get id => AppLocale.id;
  AppLocale get en => AppLocale.en;
  AppLocale get currentLocale => LocaleSettings.currentLocale;
  String navigation(int i) => texts.tabs.tabs[i];

  void changeLocale(AppLocale code){
    LocaleSettings.setLocale(code);
    Intl.defaultLocale = code.languageCode;
    Get.updateLocale(Locale(code.languageCode));
  }
}