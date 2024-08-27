import 'package:portofolio/locale/locale.g.dart';
import 'package:portofolio/views/desktop/desktop_body.dart';
import 'package:portofolio/views/mobile/mobile_body.dart';
import 'package:portofolio/views/tablet/tablet_body.dart';
import 'package:portofolio/widgets/responsive_layout.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:url_strategy/url_strategy.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized;
  await initializeDateFormatting("en");
  setPathUrlStrategy();
  runApp(TranslationProvider(child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Zhogi Achmad Panusunan | Teknik Informatika',
      theme: ThemeData(
        fontFamily: GoogleFonts.montserrat().fontFamily,
        brightness: Brightness.dark,
        useMaterial3: true,
      ),
      home: const ResponsiveLayout(
        tabletBody: TabletBody(),
        desktopBody: DesktopBody(),
        mobileBody: MobileBody(),
      ),
    );
  }
}
