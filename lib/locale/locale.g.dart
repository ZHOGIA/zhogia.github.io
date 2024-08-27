/// Generated file. Do not edit.
///
/// Original: i18n
/// To regenerate, run: `dart run slang`
///
/// Locales: 2
/// Strings: 216 (108 per locale)
///
/// Built on 2024-08-27 at 13:22 UTC

// coverage:ignore-file
// ignore_for_file: type=lint

import 'package:flutter/widgets.dart';
import 'package:slang/builder/model/node.dart';
import 'package:slang_flutter/slang_flutter.dart';
export 'package:slang_flutter/slang_flutter.dart';

const AppLocale _baseLocale = AppLocale.id;

/// Supported locales, see extension methods below.
///
/// Usage:
/// - LocaleSettings.setLocale(AppLocale.id) // set locale
/// - Locale locale = AppLocale.id.flutterLocale // get flutter locale from enum
/// - if (LocaleSettings.currentLocale == AppLocale.id) // locale check
enum AppLocale with BaseAppLocale<AppLocale, Translations> {
	id(languageCode: 'id', build: Translations.build),
	en(languageCode: 'en', build: _LocaleEn.build);

	const AppLocale({required this.languageCode, this.scriptCode, this.countryCode, required this.build}); // ignore: unused_element

	@override final String languageCode;
	@override final String? scriptCode;
	@override final String? countryCode;
	@override final TranslationBuilder<AppLocale, Translations> build;

	/// Gets current instance managed by [LocaleSettings].
	Translations get translations => LocaleSettings.instance.translationMap[this]!;
}

/// Method A: Simple
///
/// No rebuild after locale change.
/// Translation happens during initialization of the widget (call of texts).
/// Configurable via 'translate_var'.
///
/// Usage:
/// String a = texts.someKey.anotherKey;
/// String b = texts['someKey.anotherKey']; // Only for edge cases!
Translations get texts => LocaleSettings.instance.currentTranslations;

/// Method B: Advanced
///
/// All widgets using this method will trigger a rebuild when locale changes.
/// Use this if you have e.g. a settings page where the user can select the locale during runtime.
///
/// Step 1:
/// wrap your App with
/// TranslationProvider(
/// 	child: MyApp()
/// );
///
/// Step 2:
/// final texts = Translations.of(context); // Get texts variable.
/// String a = texts.someKey.anotherKey; // Use texts variable.
/// String b = texts['someKey.anotherKey']; // Only for edge cases!
class TranslationProvider extends BaseTranslationProvider<AppLocale, Translations> {
	TranslationProvider({required super.child}) : super(settings: LocaleSettings.instance);

	static InheritedLocaleData<AppLocale, Translations> of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context);
}

/// Method B shorthand via [BuildContext] extension method.
/// Configurable via 'translate_var'.
///
/// Usage (e.g. in a widget's build method):
/// context.texts.someKey.anotherKey
extension BuildContextTranslationsExtension on BuildContext {
	Translations get texts => TranslationProvider.of(this).translations;
}

/// Manages all translation instances and the current locale
class LocaleSettings extends BaseFlutterLocaleSettings<AppLocale, Translations> {
	LocaleSettings._() : super(utils: AppLocaleUtils.instance);

	static final instance = LocaleSettings._();

	// static aliases (checkout base methods for documentation)
	static AppLocale get currentLocale => instance.currentLocale;
	static Stream<AppLocale> getLocaleStream() => instance.getLocaleStream();
	static AppLocale setLocale(AppLocale locale, {bool? listenToDeviceLocale = false}) => instance.setLocale(locale, listenToDeviceLocale: listenToDeviceLocale);
	static AppLocale setLocaleRaw(String rawLocale, {bool? listenToDeviceLocale = false}) => instance.setLocaleRaw(rawLocale, listenToDeviceLocale: listenToDeviceLocale);
	static AppLocale useDeviceLocale() => instance.useDeviceLocale();
	@Deprecated('Use [AppLocaleUtils.supportedLocales]') static List<Locale> get supportedLocales => instance.supportedLocales;
	@Deprecated('Use [AppLocaleUtils.supportedLocalesRaw]') static List<String> get supportedLocalesRaw => instance.supportedLocalesRaw;
	static void setPluralResolver({String? language, AppLocale? locale, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver}) => instance.setPluralResolver(
		language: language,
		locale: locale,
		cardinalResolver: cardinalResolver,
		ordinalResolver: ordinalResolver,
	);
}

/// Provides utility functions without any side effects.
class AppLocaleUtils extends BaseAppLocaleUtils<AppLocale, Translations> {
	AppLocaleUtils._() : super(baseLocale: _baseLocale, locales: AppLocale.values);

	static final instance = AppLocaleUtils._();

	// static aliases (checkout base methods for documentation)
	static AppLocale parse(String rawLocale) => instance.parse(rawLocale);
	static AppLocale parseLocaleParts({required String languageCode, String? scriptCode, String? countryCode}) => instance.parseLocaleParts(languageCode: languageCode, scriptCode: scriptCode, countryCode: countryCode);
	static AppLocale findDeviceLocale() => instance.findDeviceLocale();
	static List<Locale> get supportedLocales => instance.supportedLocales;
	static List<String> get supportedLocalesRaw => instance.supportedLocalesRaw;
}

// translations

// Path: <root>
class Translations implements BaseTranslations<AppLocale, Translations> {
	/// Returns the current translations of the given [context].
	///
	/// Usage:
	/// final texts = Translations.of(context);
	static Translations of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context).translations;

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	Translations.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.id,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <id>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	dynamic operator[](String key) => $meta.getTranslation(key);

	late final Translations _root = this; // ignore: unused_field

	// Translations
	late final _LocaleAboutId about = _LocaleAboutId._(_root);
	late final _LocaleExperienceId experience = _LocaleExperienceId._(_root);
	late final _LocaleGeneralId general = _LocaleGeneralId._(_root);
	late final _LocaleProjectsId projects = _LocaleProjectsId._(_root);
	late final _LocaleSkillsId skills = _LocaleSkillsId._(_root);
	late final _LocaleTabsId tabs = _LocaleTabsId._(_root);
}

// Path: about
class _LocaleAboutId {
	_LocaleAboutId._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get about_me => 'Saya lulusan Universitas Banten Jaya sebagai Teknik Informatika';
	List<dynamic> get about_cards => [
		_LocaleAbout$aboutCards$0i0$Id._(_root),
		_LocaleAbout$aboutCards$0i1$Id._(_root),
		_LocaleAbout$aboutCards$0i2$Id._(_root),
		_LocaleAbout$aboutCards$0i3$Id._(_root),
	];
}

// Path: experience
class _LocaleExperienceId {
	_LocaleExperienceId._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	List<dynamic> get experiences => [
		_LocaleExperience$experiences$0i0$Id._(_root),
		_LocaleExperience$experiences$0i1$Id._(_root),
	];
}

// Path: general
class _LocaleGeneralId {
	_LocaleGeneralId._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get language => 'Bahasa';
	String get indonesia => 'Indonesia';
	String get english => 'English';
	String get thank_you => 'Terima kasih telah menghubungi saya';
	String get get_back => 'Saya akan segera menghubungi Anda kembali';
	String get title_introduction_about_section => 'Perkenalan';
	String get title_about_section => 'Tentang';
	String get title_contact_section => 'Kontak';
	String get title_contact_me_section => 'Kontak saya';
	String get get_in_touch_contact_section => 'Hubungi kami';
	String get feel_free_contact_section => 'Jangan ragu untuk menghubungi kami';
	String get hint_your_name_contact_section => 'Namamu';
	String get hint_your_email_contact_section => 'Emailmu';
	String get hint_message_contact_section => 'Ketik pesan Anda';
	String get btn_send_contact_section => 'Kirim';
	String get title_experience_section => 'Pengalaman Professional';
	String get title_project_section => 'Proyek';
	String get title_personal_projects_project_section => 'Proyek Personal';
	String get title_client_projects_project_section => 'Proyek Pekerjaan/Klien';
	String get m_title_personal_projects_project_section => 'Personal';
	String get m_title_client_projects_project_section => 'Klien';
	String get title_all_projects_project_section => 'Semua Proyek';
	String get title_skill_section => 'Keterampilan';
	String get introduce_home_my_name => 'Zhogi Achmad Panusunan';
	String get hi_home_section => 'Hai! Nama saya ';
	String get introduce_home_section1 => 'Saya seorang Software Engineer yang berfokus pada aplikasi backend dan seluler.';
	String get introduce_home_section2 => 'Saya mengembangkan sistem backend untuk maskapai penerbangan dan membangun aplikasi perangkat lunak interaktif yang dapat berjalan di berbagai platform.';
	String get browse_projects_home_section => 'Lihat Proyek';
	String get required_input_field => 'Bagian ini diperlukan';
	String get copy => 'Disalin ke papan klip';
}

// Path: projects
class _LocaleProjectsId {
	_LocaleProjectsId._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	List<dynamic> get projects => [
		_LocaleProjects$projects$0i0$Id._(_root),
		_LocaleProjects$projects$0i1$Id._(_root),
	];
}

// Path: skills
class _LocaleSkillsId {
	_LocaleSkillsId._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	List<dynamic> get skills => [
		_LocaleSkills$skills$0i0$Id._(_root),
		_LocaleSkills$skills$0i1$Id._(_root),
		_LocaleSkills$skills$0i2$Id._(_root),
		_LocaleSkills$skills$0i3$Id._(_root),
		_LocaleSkills$skills$0i4$Id._(_root),
		_LocaleSkills$skills$0i5$Id._(_root),
		_LocaleSkills$skills$0i6$Id._(_root),
		_LocaleSkills$skills$0i7$Id._(_root),
		_LocaleSkills$skills$0i8$Id._(_root),
		_LocaleSkills$skills$0i9$Id._(_root),
	];
}

// Path: tabs
class _LocaleTabsId {
	_LocaleTabsId._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	List<String> get tabs => [
		'Beranda',
		'Tentang',
		'Keterampilan',
		'Pengalaman',
		'Proyek',
		'Kontak',
		'Unduh CV',
	];
}

// Path: about.about_cards.0
class _LocaleAbout$aboutCards$0i0$Id {
	_LocaleAbout$aboutCards$0i0$Id._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get content => 'Membuat';
	String get tittle => 'Software Engineer';
}

// Path: about.about_cards.1
class _LocaleAbout$aboutCards$0i1$Id {
	_LocaleAbout$aboutCards$0i1$Id._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get content => 'Membuat';
	String get tittle => 'Software Engineer';
}

// Path: about.about_cards.2
class _LocaleAbout$aboutCards$0i2$Id {
	_LocaleAbout$aboutCards$0i2$Id._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get content => 'Membuat';
	String get tittle => 'Software Engineer';
}

// Path: about.about_cards.3
class _LocaleAbout$aboutCards$0i3$Id {
	_LocaleAbout$aboutCards$0i3$Id._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get content => 'Membuat';
	String get tittle => 'Software Engineer';
}

// Path: experience.experiences.0
class _LocaleExperience$experiences$0i0$Id {
	_LocaleExperience$experiences$0i0$Id._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get company => 'PT. MNC Sky Vision';
	String get country => 'Indonesia';
	String get emp_type => 'Magang';
	String get position => '';
	String get site_url => '';
	String get start_date => '';
	String get end_date => '';
	String get state => '';
	List<String> get works => [
		'',
		'',
	];
	String get is_work_here => 'false';
}

// Path: experience.experiences.1
class _LocaleExperience$experiences$0i1$Id {
	_LocaleExperience$experiences$0i1$Id._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get company => 'Dinas Kominfo';
	String get country => 'Indonesia';
	String get emp_type => 'Magang';
	String get position => '';
	String get site_url => '';
	String get start_date => '';
	String get end_date => '';
	String get state => '';
	List<String> get works => [
		'',
		'',
	];
	String get is_work_here => 'false';
}

// Path: projects.projects.0
class _LocaleProjects$projects$0i0$Id {
	_LocaleProjects$projects$0i0$Id._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get cover_img => '';
	String get description => '';
	String get external_link => '';
	String get github_link => '';
	List<String> get images => [
	];
	String get is_personal => 'true';
	String get name => 'Portofolio Zhogi Achmad Panusunan';
	String get playstore_link => '';
	List<String> get tech => [
		'Dart',
		'Flutter',
	];
	String get type => 'Website';
}

// Path: projects.projects.1
class _LocaleProjects$projects$0i1$Id {
	_LocaleProjects$projects$0i1$Id._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get cover_img => '';
	String get description => '';
	String get external_link => '';
	String get github_link => '';
	List<String> get images => [
	];
	String get is_personal => 'true';
	String get name => 'Portofolio Zhogi Achmad Panusunan';
	String get playstore_link => '';
	List<String> get tech => [
		'Dart',
		'Flutter',
	];
	String get type => 'Website';
}

// Path: skills.skills.0
class _LocaleSkills$skills$0i0$Id {
	_LocaleSkills$skills$0i0$Id._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get img => 'https://img.icons8.com/?size=512&id=13679&format=png';
	String get name => 'Java';
}

// Path: skills.skills.1
class _LocaleSkills$skills$0i1$Id {
	_LocaleSkills$skills$0i1$Id._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get img => 'https://img.icons8.com/?size=512&id=55251&format=png';
	String get name => 'C Sharp';
}

// Path: skills.skills.2
class _LocaleSkills$skills$0i2$Id {
	_LocaleSkills$skills$0i2$Id._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get img => 'https://img.icons8.com/?size=512&id=KMIk5YXYTmwT&format=png';
	String get name => 'Visual Basic';
}

// Path: skills.skills.3
class _LocaleSkills$skills$0i3$Id {
	_LocaleSkills$skills$0i3$Id._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get img => 'https://img.icons8.com/?size=512&id=ylXrZF2zxsFE&format=png';
	String get name => 'PHP';
}

// Path: skills.skills.4
class _LocaleSkills$skills$0i4$Id {
	_LocaleSkills$skills$0i4$Id._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get img => 'https://img.icons8.com/?size=512&id=13441&format=png';
	String get name => 'Python';
}

// Path: skills.skills.5
class _LocaleSkills$skills$0i5$Id {
	_LocaleSkills$skills$0i5$Id._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get img => 'https://img.icons8.com/?size=512&id=40669&format=png';
	String get name => 'C++';
}

// Path: skills.skills.6
class _LocaleSkills$skills$0i6$Id {
	_LocaleSkills$skills$0i6$Id._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get img => 'https://img.icons8.com/?size=512&id=5pu47piHKg1I&format=png';
	String get name => 'Flutter';
}

// Path: skills.skills.7
class _LocaleSkills$skills$0i7$Id {
	_LocaleSkills$skills$0i7$Id._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get img => 'https://img.icons8.com/?size=512&id=qGUfLiYi1bRN&format=png';
	String get name => 'MySQL';
}

// Path: skills.skills.8
class _LocaleSkills$skills$0i8$Id {
	_LocaleSkills$skills$0i8$Id._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get img => 'https://img.icons8.com/?size=512&id=62452&format=png';
	String get name => 'Firebase';
}

// Path: skills.skills.9
class _LocaleSkills$skills$0i9$Id {
	_LocaleSkills$skills$0i9$Id._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get img => 'https://img.icons8.com/?size=512&id=zfHRZ6i1Wg0U&format=png';
	String get name => 'Figma';
}

// Path: <root>
class _LocaleEn implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_LocaleEn.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	@override late final _LocaleEn _root = this; // ignore: unused_field

	// Translations
	@override late final _LocaleAboutEn about = _LocaleAboutEn._(_root);
	@override late final _LocaleExperienceEn experience = _LocaleExperienceEn._(_root);
	@override late final _LocaleGeneralEn general = _LocaleGeneralEn._(_root);
	@override late final _LocaleProjectsEn projects = _LocaleProjectsEn._(_root);
	@override late final _LocaleSkillsEn skills = _LocaleSkillsEn._(_root);
	@override late final _LocaleTabsEn tabs = _LocaleTabsEn._(_root);
}

// Path: about
class _LocaleAboutEn implements _LocaleAboutId {
	_LocaleAboutEn._(this._root);

	@override final _LocaleEn _root; // ignore: unused_field

	// Translations
	@override String get about_me => 'I graduated from Universitas Banten Jaya with a degree in Informatics Engineering.';
	@override List<dynamic> get about_cards => [
		_LocaleAbout$aboutCards$0i0$En._(_root),
		_LocaleAbout$aboutCards$0i1$En._(_root),
		_LocaleAbout$aboutCards$0i2$En._(_root),
		_LocaleAbout$aboutCards$0i3$En._(_root),
	];
}

// Path: experience
class _LocaleExperienceEn implements _LocaleExperienceId {
	_LocaleExperienceEn._(this._root);

	@override final _LocaleEn _root; // ignore: unused_field

	// Translations
	@override List<dynamic> get experiences => [
		_LocaleExperience$experiences$0i0$En._(_root),
		_LocaleExperience$experiences$0i1$En._(_root),
	];
}

// Path: general
class _LocaleGeneralEn implements _LocaleGeneralId {
	_LocaleGeneralEn._(this._root);

	@override final _LocaleEn _root; // ignore: unused_field

	// Translations
	@override String get language => 'Language';
	@override String get indonesia => 'Indonesia';
	@override String get english => 'English';
	@override String get thank_you => 'Thank You for contacting me';
	@override String get get_back => 'I will get back to you shortly';
	@override String get title_introduction_about_section => 'Introduction';
	@override String get title_about_section => 'About';
	@override String get title_contact_section => 'Contact';
	@override String get title_contact_me_section => 'Contact Me';
	@override String get get_in_touch_contact_section => 'Get in touch';
	@override String get feel_free_contact_section => 'Feel free to get in touch';
	@override String get hint_your_name_contact_section => 'Your name';
	@override String get hint_your_email_contact_section => 'Your email';
	@override String get hint_message_contact_section => 'Type your message';
	@override String get btn_send_contact_section => 'Send';
	@override String get title_experience_section => 'Work Experience';
	@override String get title_project_section => 'Projects';
	@override String get title_personal_projects_project_section => 'Personal Projects';
	@override String get title_client_projects_project_section => 'Work/Client Projects';
	@override String get m_title_personal_projects_project_section => 'Personal';
	@override String get m_title_client_projects_project_section => 'Work/Client';
	@override String get title_all_projects_project_section => 'All Projects';
	@override String get title_skill_section => 'Skills';
	@override String get introduce_home_my_name => 'Zhogi Achmad Panusunan';
	@override String get hi_home_section => 'Hi, my name ';
	@override String get introduce_home_section1 => 'I am a Software Engineer focusing in backend and mobile apps.';
	@override String get introduce_home_section2 => 'I developing a backend system for airlines and build a interactive software applications with run on cross platforms.';
	@override String get browse_projects_home_section => 'See Projects';
	@override String get required_input_field => 'This field is required';
	@override String get copy => 'Copied to clipboard';
}

// Path: projects
class _LocaleProjectsEn implements _LocaleProjectsId {
	_LocaleProjectsEn._(this._root);

	@override final _LocaleEn _root; // ignore: unused_field

	// Translations
	@override List<dynamic> get projects => [
		_LocaleProjects$projects$0i0$En._(_root),
		_LocaleProjects$projects$0i1$En._(_root),
	];
}

// Path: skills
class _LocaleSkillsEn implements _LocaleSkillsId {
	_LocaleSkillsEn._(this._root);

	@override final _LocaleEn _root; // ignore: unused_field

	// Translations
	@override List<dynamic> get skills => [
		_LocaleSkills$skills$0i0$En._(_root),
		_LocaleSkills$skills$0i1$En._(_root),
		_LocaleSkills$skills$0i2$En._(_root),
		_LocaleSkills$skills$0i3$En._(_root),
		_LocaleSkills$skills$0i4$En._(_root),
		_LocaleSkills$skills$0i5$En._(_root),
		_LocaleSkills$skills$0i6$En._(_root),
		_LocaleSkills$skills$0i7$En._(_root),
		_LocaleSkills$skills$0i8$En._(_root),
		_LocaleSkills$skills$0i9$En._(_root),
	];
}

// Path: tabs
class _LocaleTabsEn implements _LocaleTabsId {
	_LocaleTabsEn._(this._root);

	@override final _LocaleEn _root; // ignore: unused_field

	// Translations
	@override List<String> get tabs => [
		'Home',
		'About',
		'Skills',
		'Experience',
		'Projects',
		'Contact',
		'Download CV',
	];
}

// Path: about.about_cards.0
class _LocaleAbout$aboutCards$0i0$En implements _LocaleAbout$aboutCards$0i0$Id {
	_LocaleAbout$aboutCards$0i0$En._(this._root);

	@override final _LocaleEn _root; // ignore: unused_field

	// Translations
	@override String get content => 'Made';
	@override String get tittle => 'Software Engineer';
}

// Path: about.about_cards.1
class _LocaleAbout$aboutCards$0i1$En implements _LocaleAbout$aboutCards$0i1$Id {
	_LocaleAbout$aboutCards$0i1$En._(this._root);

	@override final _LocaleEn _root; // ignore: unused_field

	// Translations
	@override String get content => 'Made';
	@override String get tittle => 'Software Engineer';
}

// Path: about.about_cards.2
class _LocaleAbout$aboutCards$0i2$En implements _LocaleAbout$aboutCards$0i2$Id {
	_LocaleAbout$aboutCards$0i2$En._(this._root);

	@override final _LocaleEn _root; // ignore: unused_field

	// Translations
	@override String get content => 'Made';
	@override String get tittle => 'Software Engineer';
}

// Path: about.about_cards.3
class _LocaleAbout$aboutCards$0i3$En implements _LocaleAbout$aboutCards$0i3$Id {
	_LocaleAbout$aboutCards$0i3$En._(this._root);

	@override final _LocaleEn _root; // ignore: unused_field

	// Translations
	@override String get content => 'Made';
	@override String get tittle => 'Software Engineer';
}

// Path: experience.experiences.0
class _LocaleExperience$experiences$0i0$En implements _LocaleExperience$experiences$0i0$Id {
	_LocaleExperience$experiences$0i0$En._(this._root);

	@override final _LocaleEn _root; // ignore: unused_field

	// Translations
	@override String get company => 'PT. MNC Sky Vision';
	@override String get country => 'Indonesia';
	@override String get emp_type => 'PKL';
	@override String get position => '';
	@override String get site_url => '';
	@override String get start_date => '';
	@override String get end_date => '';
	@override String get state => '';
	@override List<String> get works => [
		'',
		'',
	];
	@override String get is_work_here => 'false';
}

// Path: experience.experiences.1
class _LocaleExperience$experiences$0i1$En implements _LocaleExperience$experiences$0i1$Id {
	_LocaleExperience$experiences$0i1$En._(this._root);

	@override final _LocaleEn _root; // ignore: unused_field

	// Translations
	@override String get company => 'Dinas Kominfo';
	@override String get country => 'Indonesia';
	@override String get emp_type => 'Magang';
	@override String get position => '';
	@override String get site_url => '';
	@override String get start_date => '';
	@override String get end_date => '';
	@override String get state => '';
	@override List<String> get works => [
		'',
		'',
	];
	@override String get is_work_here => 'false';
}

// Path: projects.projects.0
class _LocaleProjects$projects$0i0$En implements _LocaleProjects$projects$0i0$Id {
	_LocaleProjects$projects$0i0$En._(this._root);

	@override final _LocaleEn _root; // ignore: unused_field

	// Translations
	@override String get cover_img => '';
	@override String get description => '';
	@override String get external_link => '';
	@override String get github_link => '';
	@override List<String> get images => [
	];
	@override String get is_personal => 'true';
	@override String get name => 'Portofolio Zhogi Achmad Panusunan';
	@override String get playstore_link => '';
	@override List<String> get tech => [
		'Dart',
		'Flutter',
	];
	@override String get type => 'Website';
}

// Path: projects.projects.1
class _LocaleProjects$projects$0i1$En implements _LocaleProjects$projects$0i1$Id {
	_LocaleProjects$projects$0i1$En._(this._root);

	@override final _LocaleEn _root; // ignore: unused_field

	// Translations
	@override String get cover_img => '';
	@override String get description => '';
	@override String get external_link => '';
	@override String get github_link => '';
	@override List<String> get images => [
	];
	@override String get is_personal => 'true';
	@override String get name => 'Portofolio Zhogi Achmad Panusunan';
	@override String get playstore_link => '';
	@override List<String> get tech => [
		'Dart',
		'Flutter',
	];
	@override String get type => 'Website';
}

// Path: skills.skills.0
class _LocaleSkills$skills$0i0$En implements _LocaleSkills$skills$0i0$Id {
	_LocaleSkills$skills$0i0$En._(this._root);

	@override final _LocaleEn _root; // ignore: unused_field

	// Translations
	@override String get img => 'https://img.icons8.com/?size=512&id=13679&format=png';
	@override String get name => 'Java';
}

// Path: skills.skills.1
class _LocaleSkills$skills$0i1$En implements _LocaleSkills$skills$0i1$Id {
	_LocaleSkills$skills$0i1$En._(this._root);

	@override final _LocaleEn _root; // ignore: unused_field

	// Translations
	@override String get img => 'https://img.icons8.com/?size=512&id=55251&format=png';
	@override String get name => 'C Sharp';
}

// Path: skills.skills.2
class _LocaleSkills$skills$0i2$En implements _LocaleSkills$skills$0i2$Id {
	_LocaleSkills$skills$0i2$En._(this._root);

	@override final _LocaleEn _root; // ignore: unused_field

	// Translations
	@override String get img => 'https://img.icons8.com/?size=512&id=KMIk5YXYTmwT&format=png';
	@override String get name => 'Visual Basic';
}

// Path: skills.skills.3
class _LocaleSkills$skills$0i3$En implements _LocaleSkills$skills$0i3$Id {
	_LocaleSkills$skills$0i3$En._(this._root);

	@override final _LocaleEn _root; // ignore: unused_field

	// Translations
	@override String get img => 'https://img.icons8.com/?size=512&id=ylXrZF2zxsFE&format=png';
	@override String get name => 'PHP';
}

// Path: skills.skills.4
class _LocaleSkills$skills$0i4$En implements _LocaleSkills$skills$0i4$Id {
	_LocaleSkills$skills$0i4$En._(this._root);

	@override final _LocaleEn _root; // ignore: unused_field

	// Translations
	@override String get img => 'https://img.icons8.com/?size=512&id=13441&format=png';
	@override String get name => 'Python';
}

// Path: skills.skills.5
class _LocaleSkills$skills$0i5$En implements _LocaleSkills$skills$0i5$Id {
	_LocaleSkills$skills$0i5$En._(this._root);

	@override final _LocaleEn _root; // ignore: unused_field

	// Translations
	@override String get img => 'https://img.icons8.com/?size=512&id=40669&format=png';
	@override String get name => 'C++';
}

// Path: skills.skills.6
class _LocaleSkills$skills$0i6$En implements _LocaleSkills$skills$0i6$Id {
	_LocaleSkills$skills$0i6$En._(this._root);

	@override final _LocaleEn _root; // ignore: unused_field

	// Translations
	@override String get img => 'https://img.icons8.com/?size=512&id=5pu47piHKg1I&format=png';
	@override String get name => 'Flutter';
}

// Path: skills.skills.7
class _LocaleSkills$skills$0i7$En implements _LocaleSkills$skills$0i7$Id {
	_LocaleSkills$skills$0i7$En._(this._root);

	@override final _LocaleEn _root; // ignore: unused_field

	// Translations
	@override String get img => 'https://img.icons8.com/?size=512&id=qGUfLiYi1bRN&format=png';
	@override String get name => 'MySQL';
}

// Path: skills.skills.8
class _LocaleSkills$skills$0i8$En implements _LocaleSkills$skills$0i8$Id {
	_LocaleSkills$skills$0i8$En._(this._root);

	@override final _LocaleEn _root; // ignore: unused_field

	// Translations
	@override String get img => 'https://img.icons8.com/?size=512&id=62452&format=png';
	@override String get name => 'Firebase';
}

// Path: skills.skills.9
class _LocaleSkills$skills$0i9$En implements _LocaleSkills$skills$0i9$Id {
	_LocaleSkills$skills$0i9$En._(this._root);

	@override final _LocaleEn _root; // ignore: unused_field

	// Translations
	@override String get img => 'https://img.icons8.com/?size=512&id=zfHRZ6i1Wg0U&format=png';
	@override String get name => 'Figma';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.

extension on Translations {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'about.about_me': return 'Saya lulusan Universitas Banten Jaya sebagai Teknik Informatika';
			case 'about.about_cards.0.content': return 'Membuat';
			case 'about.about_cards.0.tittle': return 'Software Engineer';
			case 'about.about_cards.1.content': return 'Membuat';
			case 'about.about_cards.1.tittle': return 'Software Engineer';
			case 'about.about_cards.2.content': return 'Membuat';
			case 'about.about_cards.2.tittle': return 'Software Engineer';
			case 'about.about_cards.3.content': return 'Membuat';
			case 'about.about_cards.3.tittle': return 'Software Engineer';
			case 'experience.experiences.0.company': return 'PT. MNC Sky Vision';
			case 'experience.experiences.0.country': return 'Indonesia';
			case 'experience.experiences.0.emp_type': return 'Magang';
			case 'experience.experiences.0.position': return '';
			case 'experience.experiences.0.site_url': return '';
			case 'experience.experiences.0.start_date': return '';
			case 'experience.experiences.0.end_date': return '';
			case 'experience.experiences.0.state': return '';
			case 'experience.experiences.0.works.0': return '';
			case 'experience.experiences.0.works.1': return '';
			case 'experience.experiences.0.is_work_here': return 'false';
			case 'experience.experiences.1.company': return 'Dinas Kominfo';
			case 'experience.experiences.1.country': return 'Indonesia';
			case 'experience.experiences.1.emp_type': return 'Magang';
			case 'experience.experiences.1.position': return '';
			case 'experience.experiences.1.site_url': return '';
			case 'experience.experiences.1.start_date': return '';
			case 'experience.experiences.1.end_date': return '';
			case 'experience.experiences.1.state': return '';
			case 'experience.experiences.1.works.0': return '';
			case 'experience.experiences.1.works.1': return '';
			case 'experience.experiences.1.is_work_here': return 'false';
			case 'general.language': return 'Bahasa';
			case 'general.indonesia': return 'Indonesia';
			case 'general.english': return 'English';
			case 'general.thank_you': return 'Terima kasih telah menghubungi saya';
			case 'general.get_back': return 'Saya akan segera menghubungi Anda kembali';
			case 'general.title_introduction_about_section': return 'Perkenalan';
			case 'general.title_about_section': return 'Tentang';
			case 'general.title_contact_section': return 'Kontak';
			case 'general.title_contact_me_section': return 'Kontak saya';
			case 'general.get_in_touch_contact_section': return 'Hubungi kami';
			case 'general.feel_free_contact_section': return 'Jangan ragu untuk menghubungi kami';
			case 'general.hint_your_name_contact_section': return 'Namamu';
			case 'general.hint_your_email_contact_section': return 'Emailmu';
			case 'general.hint_message_contact_section': return 'Ketik pesan Anda';
			case 'general.btn_send_contact_section': return 'Kirim';
			case 'general.title_experience_section': return 'Pengalaman Professional';
			case 'general.title_project_section': return 'Proyek';
			case 'general.title_personal_projects_project_section': return 'Proyek Personal';
			case 'general.title_client_projects_project_section': return 'Proyek Pekerjaan/Klien';
			case 'general.m_title_personal_projects_project_section': return 'Personal';
			case 'general.m_title_client_projects_project_section': return 'Klien';
			case 'general.title_all_projects_project_section': return 'Semua Proyek';
			case 'general.title_skill_section': return 'Keterampilan';
			case 'general.introduce_home_my_name': return 'Zhogi Achmad Panusunan';
			case 'general.hi_home_section': return 'Hai! Nama saya ';
			case 'general.introduce_home_section1': return 'Saya seorang Software Engineer yang berfokus pada aplikasi backend dan seluler.';
			case 'general.introduce_home_section2': return 'Saya mengembangkan sistem backend untuk maskapai penerbangan dan membangun aplikasi perangkat lunak interaktif yang dapat berjalan di berbagai platform.';
			case 'general.browse_projects_home_section': return 'Lihat Proyek';
			case 'general.required_input_field': return 'Bagian ini diperlukan';
			case 'general.copy': return 'Disalin ke papan klip';
			case 'projects.projects.0.cover_img': return '';
			case 'projects.projects.0.description': return '';
			case 'projects.projects.0.external_link': return '';
			case 'projects.projects.0.github_link': return '';
			case 'projects.projects.0.is_personal': return 'true';
			case 'projects.projects.0.name': return 'Portofolio Zhogi Achmad Panusunan';
			case 'projects.projects.0.playstore_link': return '';
			case 'projects.projects.0.tech.0': return 'Dart';
			case 'projects.projects.0.tech.1': return 'Flutter';
			case 'projects.projects.0.type': return 'Website';
			case 'projects.projects.1.cover_img': return '';
			case 'projects.projects.1.description': return '';
			case 'projects.projects.1.external_link': return '';
			case 'projects.projects.1.github_link': return '';
			case 'projects.projects.1.is_personal': return 'true';
			case 'projects.projects.1.name': return 'Portofolio Zhogi Achmad Panusunan';
			case 'projects.projects.1.playstore_link': return '';
			case 'projects.projects.1.tech.0': return 'Dart';
			case 'projects.projects.1.tech.1': return 'Flutter';
			case 'projects.projects.1.type': return 'Website';
			case 'skills.skills.0.img': return 'https://img.icons8.com/?size=512&id=13679&format=png';
			case 'skills.skills.0.name': return 'Java';
			case 'skills.skills.1.img': return 'https://img.icons8.com/?size=512&id=55251&format=png';
			case 'skills.skills.1.name': return 'C Sharp';
			case 'skills.skills.2.img': return 'https://img.icons8.com/?size=512&id=KMIk5YXYTmwT&format=png';
			case 'skills.skills.2.name': return 'Visual Basic';
			case 'skills.skills.3.img': return 'https://img.icons8.com/?size=512&id=ylXrZF2zxsFE&format=png';
			case 'skills.skills.3.name': return 'PHP';
			case 'skills.skills.4.img': return 'https://img.icons8.com/?size=512&id=13441&format=png';
			case 'skills.skills.4.name': return 'Python';
			case 'skills.skills.5.img': return 'https://img.icons8.com/?size=512&id=40669&format=png';
			case 'skills.skills.5.name': return 'C++';
			case 'skills.skills.6.img': return 'https://img.icons8.com/?size=512&id=5pu47piHKg1I&format=png';
			case 'skills.skills.6.name': return 'Flutter';
			case 'skills.skills.7.img': return 'https://img.icons8.com/?size=512&id=qGUfLiYi1bRN&format=png';
			case 'skills.skills.7.name': return 'MySQL';
			case 'skills.skills.8.img': return 'https://img.icons8.com/?size=512&id=62452&format=png';
			case 'skills.skills.8.name': return 'Firebase';
			case 'skills.skills.9.img': return 'https://img.icons8.com/?size=512&id=zfHRZ6i1Wg0U&format=png';
			case 'skills.skills.9.name': return 'Figma';
			case 'tabs.tabs.0': return 'Beranda';
			case 'tabs.tabs.1': return 'Tentang';
			case 'tabs.tabs.2': return 'Keterampilan';
			case 'tabs.tabs.3': return 'Pengalaman';
			case 'tabs.tabs.4': return 'Proyek';
			case 'tabs.tabs.5': return 'Kontak';
			case 'tabs.tabs.6': return 'Unduh CV';
			default: return null;
		}
	}
}

extension on _LocaleEn {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'about.about_me': return 'I graduated from Universitas Banten Jaya with a degree in Informatics Engineering.';
			case 'about.about_cards.0.content': return 'Made';
			case 'about.about_cards.0.tittle': return 'Software Engineer';
			case 'about.about_cards.1.content': return 'Made';
			case 'about.about_cards.1.tittle': return 'Software Engineer';
			case 'about.about_cards.2.content': return 'Made';
			case 'about.about_cards.2.tittle': return 'Software Engineer';
			case 'about.about_cards.3.content': return 'Made';
			case 'about.about_cards.3.tittle': return 'Software Engineer';
			case 'experience.experiences.0.company': return 'PT. MNC Sky Vision';
			case 'experience.experiences.0.country': return 'Indonesia';
			case 'experience.experiences.0.emp_type': return 'PKL';
			case 'experience.experiences.0.position': return '';
			case 'experience.experiences.0.site_url': return '';
			case 'experience.experiences.0.start_date': return '';
			case 'experience.experiences.0.end_date': return '';
			case 'experience.experiences.0.state': return '';
			case 'experience.experiences.0.works.0': return '';
			case 'experience.experiences.0.works.1': return '';
			case 'experience.experiences.0.is_work_here': return 'false';
			case 'experience.experiences.1.company': return 'Dinas Kominfo';
			case 'experience.experiences.1.country': return 'Indonesia';
			case 'experience.experiences.1.emp_type': return 'Magang';
			case 'experience.experiences.1.position': return '';
			case 'experience.experiences.1.site_url': return '';
			case 'experience.experiences.1.start_date': return '';
			case 'experience.experiences.1.end_date': return '';
			case 'experience.experiences.1.state': return '';
			case 'experience.experiences.1.works.0': return '';
			case 'experience.experiences.1.works.1': return '';
			case 'experience.experiences.1.is_work_here': return 'false';
			case 'general.language': return 'Language';
			case 'general.indonesia': return 'Indonesia';
			case 'general.english': return 'English';
			case 'general.thank_you': return 'Thank You for contacting me';
			case 'general.get_back': return 'I will get back to you shortly';
			case 'general.title_introduction_about_section': return 'Introduction';
			case 'general.title_about_section': return 'About';
			case 'general.title_contact_section': return 'Contact';
			case 'general.title_contact_me_section': return 'Contact Me';
			case 'general.get_in_touch_contact_section': return 'Get in touch';
			case 'general.feel_free_contact_section': return 'Feel free to get in touch';
			case 'general.hint_your_name_contact_section': return 'Your name';
			case 'general.hint_your_email_contact_section': return 'Your email';
			case 'general.hint_message_contact_section': return 'Type your message';
			case 'general.btn_send_contact_section': return 'Send';
			case 'general.title_experience_section': return 'Work Experience';
			case 'general.title_project_section': return 'Projects';
			case 'general.title_personal_projects_project_section': return 'Personal Projects';
			case 'general.title_client_projects_project_section': return 'Work/Client Projects';
			case 'general.m_title_personal_projects_project_section': return 'Personal';
			case 'general.m_title_client_projects_project_section': return 'Work/Client';
			case 'general.title_all_projects_project_section': return 'All Projects';
			case 'general.title_skill_section': return 'Skills';
			case 'general.introduce_home_my_name': return 'Zhogi Achmad Panusunan';
			case 'general.hi_home_section': return 'Hi, my name ';
			case 'general.introduce_home_section1': return 'I am a Software Engineer focusing in backend and mobile apps.';
			case 'general.introduce_home_section2': return 'I developing a backend system for airlines and build a interactive software applications with run on cross platforms.';
			case 'general.browse_projects_home_section': return 'See Projects';
			case 'general.required_input_field': return 'This field is required';
			case 'general.copy': return 'Copied to clipboard';
			case 'projects.projects.0.cover_img': return '';
			case 'projects.projects.0.description': return '';
			case 'projects.projects.0.external_link': return '';
			case 'projects.projects.0.github_link': return '';
			case 'projects.projects.0.is_personal': return 'true';
			case 'projects.projects.0.name': return 'Portofolio Zhogi Achmad Panusunan';
			case 'projects.projects.0.playstore_link': return '';
			case 'projects.projects.0.tech.0': return 'Dart';
			case 'projects.projects.0.tech.1': return 'Flutter';
			case 'projects.projects.0.type': return 'Website';
			case 'projects.projects.1.cover_img': return '';
			case 'projects.projects.1.description': return '';
			case 'projects.projects.1.external_link': return '';
			case 'projects.projects.1.github_link': return '';
			case 'projects.projects.1.is_personal': return 'true';
			case 'projects.projects.1.name': return 'Portofolio Zhogi Achmad Panusunan';
			case 'projects.projects.1.playstore_link': return '';
			case 'projects.projects.1.tech.0': return 'Dart';
			case 'projects.projects.1.tech.1': return 'Flutter';
			case 'projects.projects.1.type': return 'Website';
			case 'skills.skills.0.img': return 'https://img.icons8.com/?size=512&id=13679&format=png';
			case 'skills.skills.0.name': return 'Java';
			case 'skills.skills.1.img': return 'https://img.icons8.com/?size=512&id=55251&format=png';
			case 'skills.skills.1.name': return 'C Sharp';
			case 'skills.skills.2.img': return 'https://img.icons8.com/?size=512&id=KMIk5YXYTmwT&format=png';
			case 'skills.skills.2.name': return 'Visual Basic';
			case 'skills.skills.3.img': return 'https://img.icons8.com/?size=512&id=ylXrZF2zxsFE&format=png';
			case 'skills.skills.3.name': return 'PHP';
			case 'skills.skills.4.img': return 'https://img.icons8.com/?size=512&id=13441&format=png';
			case 'skills.skills.4.name': return 'Python';
			case 'skills.skills.5.img': return 'https://img.icons8.com/?size=512&id=40669&format=png';
			case 'skills.skills.5.name': return 'C++';
			case 'skills.skills.6.img': return 'https://img.icons8.com/?size=512&id=5pu47piHKg1I&format=png';
			case 'skills.skills.6.name': return 'Flutter';
			case 'skills.skills.7.img': return 'https://img.icons8.com/?size=512&id=qGUfLiYi1bRN&format=png';
			case 'skills.skills.7.name': return 'MySQL';
			case 'skills.skills.8.img': return 'https://img.icons8.com/?size=512&id=62452&format=png';
			case 'skills.skills.8.name': return 'Firebase';
			case 'skills.skills.9.img': return 'https://img.icons8.com/?size=512&id=zfHRZ6i1Wg0U&format=png';
			case 'skills.skills.9.name': return 'Figma';
			case 'tabs.tabs.0': return 'Home';
			case 'tabs.tabs.1': return 'About';
			case 'tabs.tabs.2': return 'Skills';
			case 'tabs.tabs.3': return 'Experience';
			case 'tabs.tabs.4': return 'Projects';
			case 'tabs.tabs.5': return 'Contact';
			case 'tabs.tabs.6': return 'Download CV';
			default: return null;
		}
	}
}
