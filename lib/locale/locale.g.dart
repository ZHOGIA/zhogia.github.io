/// Generated file. Do not edit.
///
/// Original: i18n
/// To regenerate, run: `dart run slang`
///
/// Locales: 2
/// Strings: 356 (178 per locale)
///
/// Built on 2025-07-30 at 13:32 UTC

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
	String get about_me => 'Saya lulusan Universitas Banten Jaya sebagai Sarjana Teknik Informatika dan pernah mengikuti program Workshop IT untuk mendalami Android Native dan Multiplatfrom. Sejak kuliah saya aktif di komunitas Computer Community dan Robotik. \n\nSebagai Software atau Hardware Engineer, saya selalu belajar secara mendalam dan mengasah logika coding untuk mengumpulkan keterampilan dan pengalaman dengan penelitian dan pembangunan aplikasi sistem frontend atau backend. Saya belum memiliki pengalaman kerja tetapi saya memiliki pengalaman dalam membuat hardware atau software yang bersifat otodidak dan memiliki keinginan yang sangat tinggi untuk belajar hal baru. \n\nSelain itu, saya memiliki pengalaman dalam penerapan dengan Arduino untuk mengembangkan sebuah hardware yang dapat digunakan untuk kegunaan sehari hari.';
	List<dynamic> get about_cards => [
		_LocaleAbout$aboutCards$0i0$Id._(_root),
		_LocaleAbout$aboutCards$0i1$Id._(_root),
		_LocaleAbout$aboutCards$0i2$Id._(_root),
		_LocaleAbout$aboutCards$0i3$Id._(_root),
		_LocaleAbout$aboutCards$0i4$Id._(_root),
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
	String get introduce_home_section2 => 'Saya mengembangkan sistem backend untuk membangun aplikasi perangkat lunak interaktif yang dapat berjalan di berbagai platform.';
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
		_LocaleProjects$projects$0i2$Id._(_root),
		_LocaleProjects$projects$0i3$Id._(_root),
		_LocaleProjects$projects$0i4$Id._(_root),
		_LocaleProjects$projects$0i5$Id._(_root),
		_LocaleProjects$projects$0i6$Id._(_root),
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
		_LocaleSkills$skills$0i10$Id._(_root),
		_LocaleSkills$skills$0i11$Id._(_root),
		_LocaleSkills$skills$0i12$Id._(_root),
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
	String get content => 'Membuat kode aplikasi berkualitas tinggi dan dapat digunakan kembali.';
	String get title => 'Software Engineer';
}

// Path: about.about_cards.1
class _LocaleAbout$aboutCards$0i1$Id {
	_LocaleAbout$aboutCards$0i1$Id._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get content => 'Menggunakan Java, Saya dapat mengembangkan sistem backend.';
	String get title => 'Backend Developer';
}

// Path: about.about_cards.2
class _LocaleAbout$aboutCards$0i2$Id {
	_LocaleAbout$aboutCards$0i2$Id._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get content => 'Menggunakan Arduino, Saya dapat mengembangkan sebuah alat yang berkualitas tinggi dan dapat digunakan oleh pengguna.';
	String get title => 'Hardware Engineer';
}

// Path: about.about_cards.3
class _LocaleAbout$aboutCards$0i3$Id {
	_LocaleAbout$aboutCards$0i3$Id._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get content => 'Menggunakan Android Studio & Flutter, Saya dapat mengembangkan Aplikasi dan situs Web.';
	String get title => 'Mobile Apps Developer';
}

// Path: about.about_cards.4
class _LocaleAbout$aboutCards$0i4$Id {
	_LocaleAbout$aboutCards$0i4$Id._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get content => 'Saya meneliti dan menganalisa serta melakukan troubleshooting';
	String get title => 'IT Troubleshooting';
}

// Path: experience.experiences.0
class _LocaleExperience$experiences$0i0$Id {
	_LocaleExperience$experiences$0i0$Id._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get company => 'PT. MNC Sky Vision';
	String get country => 'Indonesia';
	String get emp_type => 'Magang';
	String get position => 'Managemen File';
	String get site_url => 'https://mncvisionnetworks.com/';
	String get start_date => '2018-01-01T00:00:00.000';
	String get end_date => '2018-04-01T00:00:00.000';
	String get state => 'Jakarta Barat';
	List<String> get works => [
		'Menyaring data dan mengolah informasi data serta menginputkan kedalam Excel.',
		'Melakukan backup secara berkala untuk menghindari file yang hilang atau rusak.',
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
	String get position => 'Persandian';
	String get site_url => 'https://kominfo.serangkota.go.id/';
	String get start_date => '2022-05-01T00:00:00.000';
	String get end_date => '2022-06-01T00:00:00.000';
	String get state => 'Kec. Curug, Kota Serang';
	List<String> get works => [
		'Menganalisis data dan website serta mencari website yang layak digunakan atau tidak layak.',
		'Mengimput data dari hasil menganalisis website.',
		'Memantau website aplikasi untuk mencegah adanya pembobolan pada suatu aplikasi website.',
	];
	String get is_work_here => 'false';
}

// Path: projects.projects.0
class _LocaleProjects$projects$0i0$Id {
	_LocaleProjects$projects$0i0$Id._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get cover_img => 'https://raw.githubusercontent.com/ZHOGIA/zhogia.github.io/main/media/images/portofolio.png';
	String get description => '';
	String get external_link => 'https://zhogia.github.io/';
	String get github_link => 'https://github.com/ZHOGIA/zhogia.github.io';
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
	String get cover_img => 'https://raw.githubusercontent.com/ZHOGIA/zhogia.github.io/main/media/images/elearning.png';
	String get description => 'Proyek akhir skripsi.';
	String get external_link => '';
	String get github_link => '';
	List<String> get images => [
	];
	String get is_personal => 'true';
	String get name => 'E-Learning (Belajar online dimanapun kamu berada).';
	String get playstore_link => '';
	List<String> get tech => [
		'Java',
		'Firebase',
		'Figma',
	];
	String get type => 'Aplikasi';
}

// Path: projects.projects.2
class _LocaleProjects$projects$0i2$Id {
	_LocaleProjects$projects$0i2$Id._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get cover_img => 'https://raw.githubusercontent.com/ZHOGIA/zhogia.github.io/main/media/images/duocars.png';
	String get description => 'Membuat game dengan Unity (DUOCARS)';
	String get external_link => '';
	String get github_link => '';
	List<String> get images => [
	];
	String get is_personal => 'true';
	String get name => 'Membuat aplikasi game sederhana menggunakan Unity engine';
	String get playstore_link => '';
	List<String> get tech => [
		'C Sharp',
		'Firebase',
		'Figma',
	];
	String get type => 'Aplikasi';
}

// Path: projects.projects.3
class _LocaleProjects$projects$0i3$Id {
	_LocaleProjects$projects$0i3$Id._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get cover_img => 'https://raw.githubusercontent.com/ZHOGIA/zhogia.github.io/main/media/images/ledmatrix.png';
	String get description => 'Membuat stoplamp agar terlihat kekinian menggunakan LED Matrix dan ESP8266';
	String get external_link => '';
	String get github_link => '';
	List<String> get images => [
	];
	String get is_personal => 'true';
	String get name => 'LED Matrix pada stoplamp motor';
	String get playstore_link => '';
	List<String> get tech => [
		'C++',
		'C',
		'ESP8266',
		'HTML',
		'Python',
	];
	String get type => 'Website';
}

// Path: projects.projects.4
class _LocaleProjects$projects$0i4$Id {
	_LocaleProjects$projects$0i4$Id._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get cover_img => 'https://raw.githubusercontent.com/ZHOGIA/zhogia.github.io/main/media/images/keyless.png';
	String get description => 'Proyek motor dengan ESP32 untuk meremote motor agar bisa dinyalakan dengan seluler serta melacak keberadaan motor';
	String get external_link => '';
	String get github_link => '';
	List<String> get images => [
	];
	String get is_personal => 'true';
	String get name => 'Meremote dan melacak motor menggunakan seluler';
	String get playstore_link => '';
	List<String> get tech => [
		'Java',
		'Firebase',
		'Figma',
		'ESP32',
		'C',
		'C++',
	];
	String get type => 'Aplikasi';
}

// Path: projects.projects.5
class _LocaleProjects$projects$0i5$Id {
	_LocaleProjects$projects$0i5$Id._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get cover_img => 'https://raw.githubusercontent.com/ZHOGIA/zhogia.github.io/main/media/images/PXL_20250531_193947682.jpg';
	String get description => 'Proyek menampilkan waktu untuk sepeda motor menggunakan ESP 8266 dengan modul RTC DS3231. Dan dapat mencari wifi untuk terhubung ke internet berfungsi untuk memperbaiki waktu jika waktu ditampilkan tidak sesuai atau tidak akurat.';
	String get external_link => '';
	String get github_link => '';
	List<String> get images => [
	];
	String get is_personal => 'true';
	String get name => 'Menampilkan waktu secara realtime dan akurat';
	String get playstore_link => '';
	List<String> get tech => [
		'C',
		'C++',
		'ESP8266',
	];
	String get type => 'Program';
}

// Path: projects.projects.6
class _LocaleProjects$projects$0i6$Id {
	_LocaleProjects$projects$0i6$Id._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get cover_img => 'https://raw.githubusercontent.com/ZHOGIA/zhogia.github.io/main/media/images/daftarharga1.png';
	String get description => 'Membuat aplikasi untuk mengelola stok barang pada usaha Photocopy, Terintegrasi dengan Firebase sebagai database-nya.';
	String get external_link => '';
	String get github_link => '';
	List<String> get images => [
	];
	String get is_personal => 'true';
	String get name => 'Mempermudah mencari dan mengelola barang pada usaha Photocopy';
	String get playstore_link => '';
	List<String> get tech => [
		'C Sharp',
		'.NET',
		'Firebase',
	];
	String get type => 'Aplikasi';
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
	String get img => 'https://img.icons8.com/?size=512&id=QSOostPggwCK&format=png';
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
	String get img => 'https://img.icons8.com/?size=512&id=EgOU93v1DHjU&format=png';
	String get name => 'Android Studio';
}

// Path: skills.skills.8
class _LocaleSkills$skills$0i8$Id {
	_LocaleSkills$skills$0i8$Id._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get img => 'https://img.icons8.com/?size=512&id=13444&format=png';
	String get name => 'Arduino';
}

// Path: skills.skills.9
class _LocaleSkills$skills$0i9$Id {
	_LocaleSkills$skills$0i9$Id._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get img => 'https://img.icons8.com/?size=512&id=ezj3zaVtImPg&format=png';
	String get name => 'Visual Studio';
}

// Path: skills.skills.10
class _LocaleSkills$skills$0i10$Id {
	_LocaleSkills$skills$0i10$Id._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get img => 'https://img.icons8.com/?size=512&id=qGUfLiYi1bRN&format=png';
	String get name => 'MySQL';
}

// Path: skills.skills.11
class _LocaleSkills$skills$0i11$Id {
	_LocaleSkills$skills$0i11$Id._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get img => 'https://img.icons8.com/?size=512&id=62452&format=png';
	String get name => 'Firebase';
}

// Path: skills.skills.12
class _LocaleSkills$skills$0i12$Id {
	_LocaleSkills$skills$0i12$Id._(this._root);

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
	@override String get about_me => 'I graduated from Universitas Banten Jaya with a Bachelor\'s degree in Informatics Engineering and participated in an IT Workshop to deepen my knowledge of Android Native and Multiplatform development. During my studies, I was actively involved in the Computer Community and Robotics. \n\nAs a Software or Hardware Engineer, I am committed to deep learning and refining my coding logic to acquire skills and experience through research and the development of frontend or backend systems. While I don\'t have formal work experience, I have self-taught experience in creating both hardware and software, and I possess a strong desire to learn new things. \n\nAdditionally, I have hands-on experience with Arduino, where I\'ve developed hardware solutions for everyday use.';
	@override List<dynamic> get about_cards => [
		_LocaleAbout$aboutCards$0i0$En._(_root),
		_LocaleAbout$aboutCards$0i1$En._(_root),
		_LocaleAbout$aboutCards$0i2$En._(_root),
		_LocaleAbout$aboutCards$0i3$En._(_root),
		_LocaleAbout$aboutCards$0i4$En._(_root),
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
	@override String get introduce_home_section2 => 'I developing a backend system to build a interactive software applications with run on cross platforms.';
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
		_LocaleProjects$projects$0i2$En._(_root),
		_LocaleProjects$projects$0i3$En._(_root),
		_LocaleProjects$projects$0i4$En._(_root),
		_LocaleProjects$projects$0i5$En._(_root),
		_LocaleProjects$projects$0i6$En._(_root),
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
		_LocaleSkills$skills$0i10$En._(_root),
		_LocaleSkills$skills$0i11$En._(_root),
		_LocaleSkills$skills$0i12$En._(_root),
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
	@override String get content => 'Writing high-quality, reusable application code.';
	@override String get title => 'Software Engineer';
}

// Path: about.about_cards.1
class _LocaleAbout$aboutCards$0i1$En implements _LocaleAbout$aboutCards$0i1$Id {
	_LocaleAbout$aboutCards$0i1$En._(this._root);

	@override final _LocaleEn _root; // ignore: unused_field

	// Translations
	@override String get content => 'Using Java, I can develop backend systems.';
	@override String get title => 'Backend Developer';
}

// Path: about.about_cards.2
class _LocaleAbout$aboutCards$0i2$En implements _LocaleAbout$aboutCards$0i2$Id {
	_LocaleAbout$aboutCards$0i2$En._(this._root);

	@override final _LocaleEn _root; // ignore: unused_field

	// Translations
	@override String get content => 'Using Arduino, I can develop a high-quality tool that is user-friendly.';
	@override String get title => 'Hardware Engineer';
}

// Path: about.about_cards.3
class _LocaleAbout$aboutCards$0i3$En implements _LocaleAbout$aboutCards$0i3$Id {
	_LocaleAbout$aboutCards$0i3$En._(this._root);

	@override final _LocaleEn _root; // ignore: unused_field

	// Translations
	@override String get content => 'Using Android Studio & Flutter, I can develop applications and websites.';
	@override String get title => 'Mobile Apps Developer';
}

// Path: about.about_cards.4
class _LocaleAbout$aboutCards$0i4$En implements _LocaleAbout$aboutCards$0i4$Id {
	_LocaleAbout$aboutCards$0i4$En._(this._root);

	@override final _LocaleEn _root; // ignore: unused_field

	// Translations
	@override String get content => 'I research, analyze, and perform troubleshooting.';
	@override String get title => 'IT Troubleshooting';
}

// Path: experience.experiences.0
class _LocaleExperience$experiences$0i0$En implements _LocaleExperience$experiences$0i0$Id {
	_LocaleExperience$experiences$0i0$En._(this._root);

	@override final _LocaleEn _root; // ignore: unused_field

	// Translations
	@override String get company => 'PT. MNC Sky Vision';
	@override String get country => 'Indonesia';
	@override String get emp_type => 'Apprenticeship';
	@override String get position => 'File Management';
	@override String get site_url => 'https://mncvisionnetworks.com/';
	@override String get start_date => '2018-01-01T00:00:00.000';
	@override String get end_date => '2018-04-01T00:00:00.000';
	@override String get state => 'Jakarta Barat';
	@override List<String> get works => [
		'Filtering and processing data, then inputting it into Excel.',
		'Performing regular backups to prevent file loss or corruption.',
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
	@override String get emp_type => 'Apprenticeship';
	@override String get position => 'Chiper';
	@override String get site_url => 'https://kominfo.serangkota.go.id/';
	@override String get start_date => '2022-05-01T00:00:00.000';
	@override String get end_date => '2022-06-01T00:00:00.000';
	@override String get state => 'Kec. Curug, Kota Serang';
	@override List<String> get works => [
		'Analyzing data and websites to determine their usability or lack thereof.',
		'Inputting data from website analysis results.',
		'Monitoring website applications to prevent potential breaches.',
	];
	@override String get is_work_here => 'false';
}

// Path: projects.projects.0
class _LocaleProjects$projects$0i0$En implements _LocaleProjects$projects$0i0$Id {
	_LocaleProjects$projects$0i0$En._(this._root);

	@override final _LocaleEn _root; // ignore: unused_field

	// Translations
	@override String get cover_img => 'https://raw.githubusercontent.com/ZHOGIA/zhogia.github.io/main/media/images/portofolio.png';
	@override String get description => '';
	@override String get external_link => 'https://zhogia.github.io/';
	@override String get github_link => 'https://github.com/ZHOGIA/zhogia.github.io';
	@override List<String> get images => [
	];
	@override String get is_personal => 'true';
	@override String get name => 'Portfolio Saya';
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
	@override String get cover_img => 'https://raw.githubusercontent.com/ZHOGIA/zhogia.github.io/main/media/images/elearning.png';
	@override String get description => 'Final thesis project.';
	@override String get external_link => '';
	@override String get github_link => '';
	@override List<String> get images => [
	];
	@override String get is_personal => 'true';
	@override String get name => 'E-Learning (Learn online wherever you are).';
	@override String get playstore_link => '';
	@override List<String> get tech => [
		'Java',
		'Firebase',
		'Figma',
	];
	@override String get type => 'Application';
}

// Path: projects.projects.2
class _LocaleProjects$projects$0i2$En implements _LocaleProjects$projects$0i2$Id {
	_LocaleProjects$projects$0i2$En._(this._root);

	@override final _LocaleEn _root; // ignore: unused_field

	// Translations
	@override String get cover_img => 'https://raw.githubusercontent.com/ZHOGIA/zhogia.github.io/main/media/images/duocars.png';
	@override String get description => 'Creating a game with Unity (DUOCARS).';
	@override String get external_link => '';
	@override String get github_link => 'https://github.com/ZHOGIA/DUOCARS';
	@override List<String> get images => [
	];
	@override String get is_personal => 'true';
	@override String get name => 'Creating a simple game application using the Unity engine.';
	@override String get playstore_link => '';
	@override List<String> get tech => [
		'C Sharp',
		'Firebase',
		'Figma',
	];
	@override String get type => 'Application';
}

// Path: projects.projects.3
class _LocaleProjects$projects$0i3$En implements _LocaleProjects$projects$0i3$Id {
	_LocaleProjects$projects$0i3$En._(this._root);

	@override final _LocaleEn _root; // ignore: unused_field

	// Translations
	@override String get cover_img => 'https://raw.githubusercontent.com/ZHOGIA/zhogia.github.io/main/media/images/ledmatrix.png';
	@override String get description => 'Creating a modern-looking stoplamp using an LED Matrix and ESP8266.';
	@override String get external_link => '';
	@override String get github_link => '';
	@override List<String> get images => [
	];
	@override String get is_personal => 'true';
	@override String get name => 'LED Matrix on a motorcycle stoplamp.';
	@override String get playstore_link => '';
	@override List<String> get tech => [
		'C++',
		'C',
		'ESP8266',
		'HTML',
		'Python',
	];
	@override String get type => 'Website';
}

// Path: projects.projects.4
class _LocaleProjects$projects$0i4$En implements _LocaleProjects$projects$0i4$Id {
	_LocaleProjects$projects$0i4$En._(this._root);

	@override final _LocaleEn _root; // ignore: unused_field

	// Translations
	@override String get cover_img => 'https://raw.githubusercontent.com/ZHOGIA/zhogia.github.io/main/media/images/keyless.png';
	@override String get description => 'A motor project using ESP32 to remotely start the motor via a mobile device and track its location.';
	@override String get external_link => '';
	@override String get github_link => '';
	@override List<String> get images => [
	];
	@override String get is_personal => 'true';
	@override String get name => 'To remotely control and track a motor using a mobile device.';
	@override String get playstore_link => '';
	@override List<String> get tech => [
		'Java',
		'Firebase',
		'Figma',
		'ESP32',
		'C',
		'C++',
	];
	@override String get type => 'Application';
}

// Path: projects.projects.5
class _LocaleProjects$projects$0i5$En implements _LocaleProjects$projects$0i5$Id {
	_LocaleProjects$projects$0i5$En._(this._root);

	@override final _LocaleEn _root; // ignore: unused_field

	// Translations
	@override String get cover_img => 'https://raw.githubusercontent.com/ZHOGIA/zhogia.github.io/main/media/images/PXL_20250531_193947682.jpg';
	@override String get description => 'A time display project for motorcycles using the ESP8266 and RTC DS3231 module. The device can search for available Wi-Fi networks to connect to the internet, allowing it to automatically synchronize and correct the time if the displayed time is inaccurate.';
	@override String get external_link => '';
	@override String get github_link => '';
	@override List<String> get images => [
	];
	@override String get is_personal => 'true';
	@override String get name => 'Displaying time in real-time and with high accuracy.';
	@override String get playstore_link => '';
	@override List<String> get tech => [
		'C',
		'C++',
		'ESP8266',
	];
	@override String get type => 'Programme';
}

// Path: projects.projects.6
class _LocaleProjects$projects$0i6$En implements _LocaleProjects$projects$0i6$Id {
	_LocaleProjects$projects$0i6$En._(this._root);

	@override final _LocaleEn _root; // ignore: unused_field

	// Translations
	@override String get cover_img => 'https://raw.githubusercontent.com/ZHOGIA/zhogia.github.io/main/media/images/daftarharga1.png';
	@override String get description => 'Developed an application to manage inventory for a photocopy business, integrated with Firebase as the database.';
	@override String get external_link => '';
	@override String get github_link => '';
	@override List<String> get images => [
	];
	@override String get is_personal => 'true';
	@override String get name => 'The application simplifies searching and managing stock items, making operations more efficient.';
	@override String get playstore_link => '';
	@override List<String> get tech => [
		'C Sharp',
		'.NET',
		'Firebase',
	];
	@override String get type => 'Application';
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
	@override String get img => 'https://img.icons8.com/?size=512&id=QSOostPggwCK&format=png';
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
	@override String get img => 'https://img.icons8.com/?size=512&id=EgOU93v1DHjU&format=png';
	@override String get name => 'Android Studio';
}

// Path: skills.skills.8
class _LocaleSkills$skills$0i8$En implements _LocaleSkills$skills$0i8$Id {
	_LocaleSkills$skills$0i8$En._(this._root);

	@override final _LocaleEn _root; // ignore: unused_field

	// Translations
	@override String get img => 'https://img.icons8.com/?size=512&id=13444&format=png';
	@override String get name => 'Arduino';
}

// Path: skills.skills.9
class _LocaleSkills$skills$0i9$En implements _LocaleSkills$skills$0i9$Id {
	_LocaleSkills$skills$0i9$En._(this._root);

	@override final _LocaleEn _root; // ignore: unused_field

	// Translations
	@override String get img => 'https://img.icons8.com/?size=512&id=ezj3zaVtImPg&format=png';
	@override String get name => 'Visual Studio';
}

// Path: skills.skills.10
class _LocaleSkills$skills$0i10$En implements _LocaleSkills$skills$0i10$Id {
	_LocaleSkills$skills$0i10$En._(this._root);

	@override final _LocaleEn _root; // ignore: unused_field

	// Translations
	@override String get img => 'https://img.icons8.com/?size=512&id=qGUfLiYi1bRN&format=png';
	@override String get name => 'MySQL';
}

// Path: skills.skills.11
class _LocaleSkills$skills$0i11$En implements _LocaleSkills$skills$0i11$Id {
	_LocaleSkills$skills$0i11$En._(this._root);

	@override final _LocaleEn _root; // ignore: unused_field

	// Translations
	@override String get img => 'https://img.icons8.com/?size=512&id=62452&format=png';
	@override String get name => 'Firebase';
}

// Path: skills.skills.12
class _LocaleSkills$skills$0i12$En implements _LocaleSkills$skills$0i12$Id {
	_LocaleSkills$skills$0i12$En._(this._root);

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
			case 'about.about_me': return 'Saya lulusan Universitas Banten Jaya sebagai Sarjana Teknik Informatika dan pernah mengikuti program Workshop IT untuk mendalami Android Native dan Multiplatfrom. Sejak kuliah saya aktif di komunitas Computer Community dan Robotik. \n\nSebagai Software atau Hardware Engineer, saya selalu belajar secara mendalam dan mengasah logika coding untuk mengumpulkan keterampilan dan pengalaman dengan penelitian dan pembangunan aplikasi sistem frontend atau backend. Saya belum memiliki pengalaman kerja tetapi saya memiliki pengalaman dalam membuat hardware atau software yang bersifat otodidak dan memiliki keinginan yang sangat tinggi untuk belajar hal baru. \n\nSelain itu, saya memiliki pengalaman dalam penerapan dengan Arduino untuk mengembangkan sebuah hardware yang dapat digunakan untuk kegunaan sehari hari.';
			case 'about.about_cards.0.content': return 'Membuat kode aplikasi berkualitas tinggi dan dapat digunakan kembali.';
			case 'about.about_cards.0.title': return 'Software Engineer';
			case 'about.about_cards.1.content': return 'Menggunakan Java, Saya dapat mengembangkan sistem backend.';
			case 'about.about_cards.1.title': return 'Backend Developer';
			case 'about.about_cards.2.content': return 'Menggunakan Arduino, Saya dapat mengembangkan sebuah alat yang berkualitas tinggi dan dapat digunakan oleh pengguna.';
			case 'about.about_cards.2.title': return 'Hardware Engineer';
			case 'about.about_cards.3.content': return 'Menggunakan Android Studio & Flutter, Saya dapat mengembangkan Aplikasi dan situs Web.';
			case 'about.about_cards.3.title': return 'Mobile Apps Developer';
			case 'about.about_cards.4.content': return 'Saya meneliti dan menganalisa serta melakukan troubleshooting';
			case 'about.about_cards.4.title': return 'IT Troubleshooting';
			case 'experience.experiences.0.company': return 'PT. MNC Sky Vision';
			case 'experience.experiences.0.country': return 'Indonesia';
			case 'experience.experiences.0.emp_type': return 'Magang';
			case 'experience.experiences.0.position': return 'Managemen File';
			case 'experience.experiences.0.site_url': return 'https://mncvisionnetworks.com/';
			case 'experience.experiences.0.start_date': return '2018-01-01T00:00:00.000';
			case 'experience.experiences.0.end_date': return '2018-04-01T00:00:00.000';
			case 'experience.experiences.0.state': return 'Jakarta Barat';
			case 'experience.experiences.0.works.0': return 'Menyaring data dan mengolah informasi data serta menginputkan kedalam Excel.';
			case 'experience.experiences.0.works.1': return 'Melakukan backup secara berkala untuk menghindari file yang hilang atau rusak.';
			case 'experience.experiences.0.is_work_here': return 'false';
			case 'experience.experiences.1.company': return 'Dinas Kominfo';
			case 'experience.experiences.1.country': return 'Indonesia';
			case 'experience.experiences.1.emp_type': return 'Magang';
			case 'experience.experiences.1.position': return 'Persandian';
			case 'experience.experiences.1.site_url': return 'https://kominfo.serangkota.go.id/';
			case 'experience.experiences.1.start_date': return '2022-05-01T00:00:00.000';
			case 'experience.experiences.1.end_date': return '2022-06-01T00:00:00.000';
			case 'experience.experiences.1.state': return 'Kec. Curug, Kota Serang';
			case 'experience.experiences.1.works.0': return 'Menganalisis data dan website serta mencari website yang layak digunakan atau tidak layak.';
			case 'experience.experiences.1.works.1': return 'Mengimput data dari hasil menganalisis website.';
			case 'experience.experiences.1.works.2': return 'Memantau website aplikasi untuk mencegah adanya pembobolan pada suatu aplikasi website.';
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
			case 'general.introduce_home_section2': return 'Saya mengembangkan sistem backend untuk membangun aplikasi perangkat lunak interaktif yang dapat berjalan di berbagai platform.';
			case 'general.browse_projects_home_section': return 'Lihat Proyek';
			case 'general.required_input_field': return 'Bagian ini diperlukan';
			case 'general.copy': return 'Disalin ke papan klip';
			case 'projects.projects.0.cover_img': return 'https://raw.githubusercontent.com/ZHOGIA/zhogia.github.io/main/media/images/portofolio.png';
			case 'projects.projects.0.description': return '';
			case 'projects.projects.0.external_link': return 'https://zhogia.github.io/';
			case 'projects.projects.0.github_link': return 'https://github.com/ZHOGIA/zhogia.github.io';
			case 'projects.projects.0.is_personal': return 'true';
			case 'projects.projects.0.name': return 'Portofolio Zhogi Achmad Panusunan';
			case 'projects.projects.0.playstore_link': return '';
			case 'projects.projects.0.tech.0': return 'Dart';
			case 'projects.projects.0.tech.1': return 'Flutter';
			case 'projects.projects.0.type': return 'Website';
			case 'projects.projects.1.cover_img': return 'https://raw.githubusercontent.com/ZHOGIA/zhogia.github.io/main/media/images/elearning.png';
			case 'projects.projects.1.description': return 'Proyek akhir skripsi.';
			case 'projects.projects.1.external_link': return '';
			case 'projects.projects.1.github_link': return '';
			case 'projects.projects.1.is_personal': return 'true';
			case 'projects.projects.1.name': return 'E-Learning (Belajar online dimanapun kamu berada).';
			case 'projects.projects.1.playstore_link': return '';
			case 'projects.projects.1.tech.0': return 'Java';
			case 'projects.projects.1.tech.1': return 'Firebase';
			case 'projects.projects.1.tech.2': return 'Figma';
			case 'projects.projects.1.type': return 'Aplikasi';
			case 'projects.projects.2.cover_img': return 'https://raw.githubusercontent.com/ZHOGIA/zhogia.github.io/main/media/images/duocars.png';
			case 'projects.projects.2.description': return 'Membuat game dengan Unity (DUOCARS)';
			case 'projects.projects.2.external_link': return '';
			case 'projects.projects.2.github_link': return '';
			case 'projects.projects.2.is_personal': return 'true';
			case 'projects.projects.2.name': return 'Membuat aplikasi game sederhana menggunakan Unity engine';
			case 'projects.projects.2.playstore_link': return '';
			case 'projects.projects.2.tech.0': return 'C Sharp';
			case 'projects.projects.2.tech.1': return 'Firebase';
			case 'projects.projects.2.tech.2': return 'Figma';
			case 'projects.projects.2.type': return 'Aplikasi';
			case 'projects.projects.3.cover_img': return 'https://raw.githubusercontent.com/ZHOGIA/zhogia.github.io/main/media/images/ledmatrix.png';
			case 'projects.projects.3.description': return 'Membuat stoplamp agar terlihat kekinian menggunakan LED Matrix dan ESP8266';
			case 'projects.projects.3.external_link': return '';
			case 'projects.projects.3.github_link': return '';
			case 'projects.projects.3.is_personal': return 'true';
			case 'projects.projects.3.name': return 'LED Matrix pada stoplamp motor';
			case 'projects.projects.3.playstore_link': return '';
			case 'projects.projects.3.tech.0': return 'C++';
			case 'projects.projects.3.tech.1': return 'C';
			case 'projects.projects.3.tech.2': return 'ESP8266';
			case 'projects.projects.3.tech.3': return 'HTML';
			case 'projects.projects.3.tech.4': return 'Python';
			case 'projects.projects.3.type': return 'Website';
			case 'projects.projects.4.cover_img': return 'https://raw.githubusercontent.com/ZHOGIA/zhogia.github.io/main/media/images/keyless.png';
			case 'projects.projects.4.description': return 'Proyek motor dengan ESP32 untuk meremote motor agar bisa dinyalakan dengan seluler serta melacak keberadaan motor';
			case 'projects.projects.4.external_link': return '';
			case 'projects.projects.4.github_link': return '';
			case 'projects.projects.4.is_personal': return 'true';
			case 'projects.projects.4.name': return 'Meremote dan melacak motor menggunakan seluler';
			case 'projects.projects.4.playstore_link': return '';
			case 'projects.projects.4.tech.0': return 'Java';
			case 'projects.projects.4.tech.1': return 'Firebase';
			case 'projects.projects.4.tech.2': return 'Figma';
			case 'projects.projects.4.tech.3': return 'ESP32';
			case 'projects.projects.4.tech.4': return 'C';
			case 'projects.projects.4.tech.5': return 'C++';
			case 'projects.projects.4.type': return 'Aplikasi';
			case 'projects.projects.5.cover_img': return 'https://raw.githubusercontent.com/ZHOGIA/zhogia.github.io/main/media/images/PXL_20250531_193947682.jpg';
			case 'projects.projects.5.description': return 'Proyek menampilkan waktu untuk sepeda motor menggunakan ESP 8266 dengan modul RTC DS3231. Dan dapat mencari wifi untuk terhubung ke internet berfungsi untuk memperbaiki waktu jika waktu ditampilkan tidak sesuai atau tidak akurat.';
			case 'projects.projects.5.external_link': return '';
			case 'projects.projects.5.github_link': return '';
			case 'projects.projects.5.is_personal': return 'true';
			case 'projects.projects.5.name': return 'Menampilkan waktu secara realtime dan akurat';
			case 'projects.projects.5.playstore_link': return '';
			case 'projects.projects.5.tech.0': return 'C';
			case 'projects.projects.5.tech.1': return 'C++';
			case 'projects.projects.5.tech.2': return 'ESP8266';
			case 'projects.projects.5.type': return 'Program';
			case 'projects.projects.6.cover_img': return 'https://raw.githubusercontent.com/ZHOGIA/zhogia.github.io/main/media/images/daftarharga1.png';
			case 'projects.projects.6.description': return 'Membuat aplikasi untuk mengelola stok barang pada usaha Photocopy, Terintegrasi dengan Firebase sebagai database-nya.';
			case 'projects.projects.6.external_link': return '';
			case 'projects.projects.6.github_link': return '';
			case 'projects.projects.6.is_personal': return 'true';
			case 'projects.projects.6.name': return 'Mempermudah mencari dan mengelola barang pada usaha Photocopy';
			case 'projects.projects.6.playstore_link': return '';
			case 'projects.projects.6.tech.0': return 'C Sharp';
			case 'projects.projects.6.tech.1': return '.NET';
			case 'projects.projects.6.tech.2': return 'Firebase';
			case 'projects.projects.6.type': return 'Aplikasi';
			case 'skills.skills.0.img': return 'https://img.icons8.com/?size=512&id=13679&format=png';
			case 'skills.skills.0.name': return 'Java';
			case 'skills.skills.1.img': return 'https://img.icons8.com/?size=512&id=55251&format=png';
			case 'skills.skills.1.name': return 'C Sharp';
			case 'skills.skills.2.img': return 'https://img.icons8.com/?size=512&id=QSOostPggwCK&format=png';
			case 'skills.skills.2.name': return 'Visual Basic';
			case 'skills.skills.3.img': return 'https://img.icons8.com/?size=512&id=ylXrZF2zxsFE&format=png';
			case 'skills.skills.3.name': return 'PHP';
			case 'skills.skills.4.img': return 'https://img.icons8.com/?size=512&id=13441&format=png';
			case 'skills.skills.4.name': return 'Python';
			case 'skills.skills.5.img': return 'https://img.icons8.com/?size=512&id=40669&format=png';
			case 'skills.skills.5.name': return 'C++';
			case 'skills.skills.6.img': return 'https://img.icons8.com/?size=512&id=5pu47piHKg1I&format=png';
			case 'skills.skills.6.name': return 'Flutter';
			case 'skills.skills.7.img': return 'https://img.icons8.com/?size=512&id=EgOU93v1DHjU&format=png';
			case 'skills.skills.7.name': return 'Android Studio';
			case 'skills.skills.8.img': return 'https://img.icons8.com/?size=512&id=13444&format=png';
			case 'skills.skills.8.name': return 'Arduino';
			case 'skills.skills.9.img': return 'https://img.icons8.com/?size=512&id=ezj3zaVtImPg&format=png';
			case 'skills.skills.9.name': return 'Visual Studio';
			case 'skills.skills.10.img': return 'https://img.icons8.com/?size=512&id=qGUfLiYi1bRN&format=png';
			case 'skills.skills.10.name': return 'MySQL';
			case 'skills.skills.11.img': return 'https://img.icons8.com/?size=512&id=62452&format=png';
			case 'skills.skills.11.name': return 'Firebase';
			case 'skills.skills.12.img': return 'https://img.icons8.com/?size=512&id=zfHRZ6i1Wg0U&format=png';
			case 'skills.skills.12.name': return 'Figma';
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
			case 'about.about_me': return 'I graduated from Universitas Banten Jaya with a Bachelor\'s degree in Informatics Engineering and participated in an IT Workshop to deepen my knowledge of Android Native and Multiplatform development. During my studies, I was actively involved in the Computer Community and Robotics. \n\nAs a Software or Hardware Engineer, I am committed to deep learning and refining my coding logic to acquire skills and experience through research and the development of frontend or backend systems. While I don\'t have formal work experience, I have self-taught experience in creating both hardware and software, and I possess a strong desire to learn new things. \n\nAdditionally, I have hands-on experience with Arduino, where I\'ve developed hardware solutions for everyday use.';
			case 'about.about_cards.0.content': return 'Writing high-quality, reusable application code.';
			case 'about.about_cards.0.title': return 'Software Engineer';
			case 'about.about_cards.1.content': return 'Using Java, I can develop backend systems.';
			case 'about.about_cards.1.title': return 'Backend Developer';
			case 'about.about_cards.2.content': return 'Using Arduino, I can develop a high-quality tool that is user-friendly.';
			case 'about.about_cards.2.title': return 'Hardware Engineer';
			case 'about.about_cards.3.content': return 'Using Android Studio & Flutter, I can develop applications and websites.';
			case 'about.about_cards.3.title': return 'Mobile Apps Developer';
			case 'about.about_cards.4.content': return 'I research, analyze, and perform troubleshooting.';
			case 'about.about_cards.4.title': return 'IT Troubleshooting';
			case 'experience.experiences.0.company': return 'PT. MNC Sky Vision';
			case 'experience.experiences.0.country': return 'Indonesia';
			case 'experience.experiences.0.emp_type': return 'Apprenticeship';
			case 'experience.experiences.0.position': return 'File Management';
			case 'experience.experiences.0.site_url': return 'https://mncvisionnetworks.com/';
			case 'experience.experiences.0.start_date': return '2018-01-01T00:00:00.000';
			case 'experience.experiences.0.end_date': return '2018-04-01T00:00:00.000';
			case 'experience.experiences.0.state': return 'Jakarta Barat';
			case 'experience.experiences.0.works.0': return 'Filtering and processing data, then inputting it into Excel.';
			case 'experience.experiences.0.works.1': return 'Performing regular backups to prevent file loss or corruption.';
			case 'experience.experiences.0.is_work_here': return 'false';
			case 'experience.experiences.1.company': return 'Dinas Kominfo';
			case 'experience.experiences.1.country': return 'Indonesia';
			case 'experience.experiences.1.emp_type': return 'Apprenticeship';
			case 'experience.experiences.1.position': return 'Chiper';
			case 'experience.experiences.1.site_url': return 'https://kominfo.serangkota.go.id/';
			case 'experience.experiences.1.start_date': return '2022-05-01T00:00:00.000';
			case 'experience.experiences.1.end_date': return '2022-06-01T00:00:00.000';
			case 'experience.experiences.1.state': return 'Kec. Curug, Kota Serang';
			case 'experience.experiences.1.works.0': return 'Analyzing data and websites to determine their usability or lack thereof.';
			case 'experience.experiences.1.works.1': return 'Inputting data from website analysis results.';
			case 'experience.experiences.1.works.2': return 'Monitoring website applications to prevent potential breaches.';
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
			case 'general.introduce_home_section2': return 'I developing a backend system to build a interactive software applications with run on cross platforms.';
			case 'general.browse_projects_home_section': return 'See Projects';
			case 'general.required_input_field': return 'This field is required';
			case 'general.copy': return 'Copied to clipboard';
			case 'projects.projects.0.cover_img': return 'https://raw.githubusercontent.com/ZHOGIA/zhogia.github.io/main/media/images/portofolio.png';
			case 'projects.projects.0.description': return '';
			case 'projects.projects.0.external_link': return 'https://zhogia.github.io/';
			case 'projects.projects.0.github_link': return 'https://github.com/ZHOGIA/zhogia.github.io';
			case 'projects.projects.0.is_personal': return 'true';
			case 'projects.projects.0.name': return 'Portfolio Saya';
			case 'projects.projects.0.playstore_link': return '';
			case 'projects.projects.0.tech.0': return 'Dart';
			case 'projects.projects.0.tech.1': return 'Flutter';
			case 'projects.projects.0.type': return 'Website';
			case 'projects.projects.1.cover_img': return 'https://raw.githubusercontent.com/ZHOGIA/zhogia.github.io/main/media/images/elearning.png';
			case 'projects.projects.1.description': return 'Final thesis project.';
			case 'projects.projects.1.external_link': return '';
			case 'projects.projects.1.github_link': return '';
			case 'projects.projects.1.is_personal': return 'true';
			case 'projects.projects.1.name': return 'E-Learning (Learn online wherever you are).';
			case 'projects.projects.1.playstore_link': return '';
			case 'projects.projects.1.tech.0': return 'Java';
			case 'projects.projects.1.tech.1': return 'Firebase';
			case 'projects.projects.1.tech.2': return 'Figma';
			case 'projects.projects.1.type': return 'Application';
			case 'projects.projects.2.cover_img': return 'https://raw.githubusercontent.com/ZHOGIA/zhogia.github.io/main/media/images/duocars.png';
			case 'projects.projects.2.description': return 'Creating a game with Unity (DUOCARS).';
			case 'projects.projects.2.external_link': return '';
			case 'projects.projects.2.github_link': return 'https://github.com/ZHOGIA/DUOCARS';
			case 'projects.projects.2.is_personal': return 'true';
			case 'projects.projects.2.name': return 'Creating a simple game application using the Unity engine.';
			case 'projects.projects.2.playstore_link': return '';
			case 'projects.projects.2.tech.0': return 'C Sharp';
			case 'projects.projects.2.tech.1': return 'Firebase';
			case 'projects.projects.2.tech.2': return 'Figma';
			case 'projects.projects.2.type': return 'Application';
			case 'projects.projects.3.cover_img': return 'https://raw.githubusercontent.com/ZHOGIA/zhogia.github.io/main/media/images/ledmatrix.png';
			case 'projects.projects.3.description': return 'Creating a modern-looking stoplamp using an LED Matrix and ESP8266.';
			case 'projects.projects.3.external_link': return '';
			case 'projects.projects.3.github_link': return '';
			case 'projects.projects.3.is_personal': return 'true';
			case 'projects.projects.3.name': return 'LED Matrix on a motorcycle stoplamp.';
			case 'projects.projects.3.playstore_link': return '';
			case 'projects.projects.3.tech.0': return 'C++';
			case 'projects.projects.3.tech.1': return 'C';
			case 'projects.projects.3.tech.2': return 'ESP8266';
			case 'projects.projects.3.tech.3': return 'HTML';
			case 'projects.projects.3.tech.4': return 'Python';
			case 'projects.projects.3.type': return 'Website';
			case 'projects.projects.4.cover_img': return 'https://raw.githubusercontent.com/ZHOGIA/zhogia.github.io/main/media/images/keyless.png';
			case 'projects.projects.4.description': return 'A motor project using ESP32 to remotely start the motor via a mobile device and track its location.';
			case 'projects.projects.4.external_link': return '';
			case 'projects.projects.4.github_link': return '';
			case 'projects.projects.4.is_personal': return 'true';
			case 'projects.projects.4.name': return 'To remotely control and track a motor using a mobile device.';
			case 'projects.projects.4.playstore_link': return '';
			case 'projects.projects.4.tech.0': return 'Java';
			case 'projects.projects.4.tech.1': return 'Firebase';
			case 'projects.projects.4.tech.2': return 'Figma';
			case 'projects.projects.4.tech.3': return 'ESP32';
			case 'projects.projects.4.tech.4': return 'C';
			case 'projects.projects.4.tech.5': return 'C++';
			case 'projects.projects.4.type': return 'Application';
			case 'projects.projects.5.cover_img': return 'https://raw.githubusercontent.com/ZHOGIA/zhogia.github.io/main/media/images/PXL_20250531_193947682.jpg';
			case 'projects.projects.5.description': return 'A time display project for motorcycles using the ESP8266 and RTC DS3231 module. The device can search for available Wi-Fi networks to connect to the internet, allowing it to automatically synchronize and correct the time if the displayed time is inaccurate.';
			case 'projects.projects.5.external_link': return '';
			case 'projects.projects.5.github_link': return '';
			case 'projects.projects.5.is_personal': return 'true';
			case 'projects.projects.5.name': return 'Displaying time in real-time and with high accuracy.';
			case 'projects.projects.5.playstore_link': return '';
			case 'projects.projects.5.tech.0': return 'C';
			case 'projects.projects.5.tech.1': return 'C++';
			case 'projects.projects.5.tech.2': return 'ESP8266';
			case 'projects.projects.5.type': return 'Programme';
			case 'projects.projects.6.cover_img': return 'https://raw.githubusercontent.com/ZHOGIA/zhogia.github.io/main/media/images/daftarharga1.png';
			case 'projects.projects.6.description': return 'Developed an application to manage inventory for a photocopy business, integrated with Firebase as the database.';
			case 'projects.projects.6.external_link': return '';
			case 'projects.projects.6.github_link': return '';
			case 'projects.projects.6.is_personal': return 'true';
			case 'projects.projects.6.name': return 'The application simplifies searching and managing stock items, making operations more efficient.';
			case 'projects.projects.6.playstore_link': return '';
			case 'projects.projects.6.tech.0': return 'C Sharp';
			case 'projects.projects.6.tech.1': return '.NET';
			case 'projects.projects.6.tech.2': return 'Firebase';
			case 'projects.projects.6.type': return 'Application';
			case 'skills.skills.0.img': return 'https://img.icons8.com/?size=512&id=13679&format=png';
			case 'skills.skills.0.name': return 'Java';
			case 'skills.skills.1.img': return 'https://img.icons8.com/?size=512&id=55251&format=png';
			case 'skills.skills.1.name': return 'C Sharp';
			case 'skills.skills.2.img': return 'https://img.icons8.com/?size=512&id=QSOostPggwCK&format=png';
			case 'skills.skills.2.name': return 'Visual Basic';
			case 'skills.skills.3.img': return 'https://img.icons8.com/?size=512&id=ylXrZF2zxsFE&format=png';
			case 'skills.skills.3.name': return 'PHP';
			case 'skills.skills.4.img': return 'https://img.icons8.com/?size=512&id=13441&format=png';
			case 'skills.skills.4.name': return 'Python';
			case 'skills.skills.5.img': return 'https://img.icons8.com/?size=512&id=40669&format=png';
			case 'skills.skills.5.name': return 'C++';
			case 'skills.skills.6.img': return 'https://img.icons8.com/?size=512&id=5pu47piHKg1I&format=png';
			case 'skills.skills.6.name': return 'Flutter';
			case 'skills.skills.7.img': return 'https://img.icons8.com/?size=512&id=EgOU93v1DHjU&format=png';
			case 'skills.skills.7.name': return 'Android Studio';
			case 'skills.skills.8.img': return 'https://img.icons8.com/?size=512&id=13444&format=png';
			case 'skills.skills.8.name': return 'Arduino';
			case 'skills.skills.9.img': return 'https://img.icons8.com/?size=512&id=ezj3zaVtImPg&format=png';
			case 'skills.skills.9.name': return 'Visual Studio';
			case 'skills.skills.10.img': return 'https://img.icons8.com/?size=512&id=qGUfLiYi1bRN&format=png';
			case 'skills.skills.10.name': return 'MySQL';
			case 'skills.skills.11.img': return 'https://img.icons8.com/?size=512&id=62452&format=png';
			case 'skills.skills.11.name': return 'Firebase';
			case 'skills.skills.12.img': return 'https://img.icons8.com/?size=512&id=zfHRZ6i1Wg0U&format=png';
			case 'skills.skills.12.name': return 'Figma';
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
