import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ar.dart';
import 'app_localizations_bg.dart';
import 'app_localizations_bn.dart';
import 'app_localizations_ca.dart';
import 'app_localizations_cs.dart';
import 'app_localizations_da.dart';
import 'app_localizations_de.dart';
import 'app_localizations_el.dart';
import 'app_localizations_en.dart';
import 'app_localizations_es.dart';
import 'app_localizations_et.dart';
import 'app_localizations_fi.dart';
import 'app_localizations_fil.dart';
import 'app_localizations_fr.dart';
import 'app_localizations_gu.dart';
import 'app_localizations_he.dart';
import 'app_localizations_hi.dart';
import 'app_localizations_hr.dart';
import 'app_localizations_hu.dart';
import 'app_localizations_id.dart';
import 'app_localizations_it.dart';
import 'app_localizations_ja.dart';
import 'app_localizations_kn.dart';
import 'app_localizations_ko.dart';
import 'app_localizations_lt.dart';
import 'app_localizations_lv.dart';
import 'app_localizations_ml.dart';
import 'app_localizations_mr.dart';
import 'app_localizations_ms.dart';
import 'app_localizations_nl.dart';
import 'app_localizations_no.dart';
import 'app_localizations_pa.dart';
import 'app_localizations_pl.dart';
import 'app_localizations_pt.dart';
import 'app_localizations_ro.dart';
import 'app_localizations_ru.dart';
import 'app_localizations_sk.dart';
import 'app_localizations_sl.dart';
import 'app_localizations_sr.dart';
import 'app_localizations_sv.dart';
import 'app_localizations_ta.dart';
import 'app_localizations_te.dart';
import 'app_localizations_th.dart';
import 'app_localizations_tr.dart';
import 'app_localizations_uk.dart';
import 'app_localizations_ur.dart';
import 'app_localizations_vi.dart';
import 'app_localizations_zh.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
      : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ar'),
    Locale('bg'),
    Locale('bn'),
    Locale('ca'),
    Locale('cs'),
    Locale('da'),
    Locale('de'),
    Locale('el'),
    Locale('en'),
    Locale('es'),
    Locale('et'),
    Locale('fi'),
    Locale('fil'),
    Locale('fr'),
    Locale('gu'),
    Locale('he'),
    Locale('hi'),
    Locale('hr'),
    Locale('hu'),
    Locale('id'),
    Locale('it'),
    Locale('ja'),
    Locale('kn'),
    Locale('ko'),
    Locale('lt'),
    Locale('lv'),
    Locale('ml'),
    Locale('mr'),
    Locale('ms'),
    Locale('nl'),
    Locale('no'),
    Locale('pa'),
    Locale('pl'),
    Locale('pt'),
    Locale('ro'),
    Locale('ru'),
    Locale('sk'),
    Locale('sl'),
    Locale('sr'),
    Locale('sv'),
    Locale('ta'),
    Locale('te'),
    Locale('th'),
    Locale('tr'),
    Locale('uk'),
    Locale('ur'),
    Locale('vi'),
    Locale('zh'),
    Locale.fromSubtags(languageCode: 'zh', scriptCode: 'Hans'),
    Locale.fromSubtags(languageCode: 'zh', scriptCode: 'Hant')
  ];

  /// No description provided for @appTitle.
  ///
  /// In en, this message translates to:
  /// **'Countdown: Death Counter'**
  String get appTitle;

  /// No description provided for @appTitleShort.
  ///
  /// In en, this message translates to:
  /// **'Death Counter'**
  String get appTitleShort;

  /// No description provided for @notificationPermissionTitle.
  ///
  /// In en, this message translates to:
  /// **'Allow notifications'**
  String get notificationPermissionTitle;

  /// No description provided for @notificationPermissionText.
  ///
  /// In en, this message translates to:
  /// **'Would you like to receive notifications about important events in your life, changes in fate and time?'**
  String get notificationPermissionText;

  /// No description provided for @notificationPermissionYes.
  ///
  /// In en, this message translates to:
  /// **'Yes'**
  String get notificationPermissionYes;

  /// No description provided for @notificationPermissionNo.
  ///
  /// In en, this message translates to:
  /// **'No'**
  String get notificationPermissionNo;

  /// No description provided for @loading.
  ///
  /// In en, this message translates to:
  /// **'Loading...'**
  String get loading;

  /// No description provided for @startSubtitle.
  ///
  /// In en, this message translates to:
  /// **'You can only calculate your estimated life meter once.'**
  String get startSubtitle;

  /// No description provided for @calculateButton.
  ///
  /// In en, this message translates to:
  /// **'CALCULATE'**
  String get calculateButton;

  /// No description provided for @oneTimeWarning.
  ///
  /// In en, this message translates to:
  /// **'The result is created once and saved securely.'**
  String get oneTimeWarning;

  /// No description provided for @calculatingTitle.
  ///
  /// In en, this message translates to:
  /// **'Calculating'**
  String get calculatingTitle;

  /// No description provided for @estimatedTime.
  ///
  /// In en, this message translates to:
  /// **'Estimated calculation time: 12 minutes'**
  String get estimatedTime;

  /// No description provided for @fastCalculateButton.
  ///
  /// In en, this message translates to:
  /// **'Calculate quickly by watching a short video'**
  String get fastCalculateButton;

  /// No description provided for @loadingAd.
  ///
  /// In en, this message translates to:
  /// **'Video is being prepared...'**
  String get loadingAd;

  /// No description provided for @rewardedAdInfo.
  ///
  /// In en, this message translates to:
  /// **'Watching videos allows you to skip calculation time.'**
  String get rewardedAdInfo;

  /// No description provided for @adNotReady.
  ///
  /// In en, this message translates to:
  /// **'The video is not ready yet. Please try again.'**
  String get adNotReady;

  /// No description provided for @resultTitle.
  ///
  /// In en, this message translates to:
  /// **'REMAINING TIME'**
  String get resultTitle;

  /// No description provided for @years.
  ///
  /// In en, this message translates to:
  /// **'YEAR'**
  String get years;

  /// No description provided for @days.
  ///
  /// In en, this message translates to:
  /// **'DAY'**
  String get days;

  /// No description provided for @hours.
  ///
  /// In en, this message translates to:
  /// **'HOUR'**
  String get hours;

  /// No description provided for @minutes.
  ///
  /// In en, this message translates to:
  /// **'MINUTE'**
  String get minutes;

  /// No description provided for @seconds.
  ///
  /// In en, this message translates to:
  /// **'SECOND'**
  String get seconds;

  /// No description provided for @importantEvents.
  ///
  /// In en, this message translates to:
  /// **'Important Developments'**
  String get importantEvents;

  /// No description provided for @importantEvent.
  ///
  /// In en, this message translates to:
  /// **'important development'**
  String get importantEvent;

  /// No description provided for @noEvents.
  ///
  /// In en, this message translates to:
  /// **'There is no significant development yet.'**
  String get noEvents;

  /// No description provided for @lockedResultWarning.
  ///
  /// In en, this message translates to:
  /// **'This result cannot be recalculated. The same record is used even if the application is deleted.'**
  String get lockedResultWarning;

  /// No description provided for @language.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get language;

  /// No description provided for @disclaimerTitle.
  ///
  /// In en, this message translates to:
  /// **'Warning'**
  String get disclaimerTitle;

  /// No description provided for @disclaimerText.
  ///
  /// In en, this message translates to:
  /// **'This app is for entertainment purposes only. It does not provide a true prediction of health, date of death, life expectancy, or the future.'**
  String get disclaimerText;

  /// No description provided for @footerWarning.
  ///
  /// In en, this message translates to:
  /// **'It is for entertainment purposes. It is not a prediction of actual health or survival.'**
  String get footerWarning;

  /// No description provided for @ok.
  ///
  /// In en, this message translates to:
  /// **'Ok'**
  String get ok;

  /// No description provided for @eventPositiveTitle.
  ///
  /// In en, this message translates to:
  /// **'There has been an important development in your life'**
  String get eventPositiveTitle;

  /// No description provided for @eventPositiveDescription.
  ///
  /// In en, this message translates to:
  /// **'According to the system, a positive effect has been processed on your lifespan.'**
  String get eventPositiveDescription;

  /// No description provided for @eventNegativeTitle.
  ///
  /// In en, this message translates to:
  /// **'There has been an important development in your life'**
  String get eventNegativeTitle;

  /// No description provided for @eventNegativeDescription.
  ///
  /// In en, this message translates to:
  /// **'According to the system, a negative impact on your lifespan has been committed.'**
  String get eventNegativeDescription;

  /// No description provided for @aboutTitle.
  ///
  /// In en, this message translates to:
  /// **'About'**
  String get aboutTitle;

  /// No description provided for @aboutHeader.
  ///
  /// In en, this message translates to:
  /// **'COUNTDOWN SYSTEM // LAST FILE'**
  String get aboutHeader;

  /// No description provided for @aboutText1.
  ///
  /// In en, this message translates to:
  /// **'This app is for entertainment purposes only. It does not provide accurate information about actual life expectancy, date of death, health status or future.'**
  String get aboutText1;

  /// No description provided for @aboutText2.
  ///
  /// In en, this message translates to:
  /// **'The results are calculated fictionally and randomly. It is not medical, psychological, legal or financial advice.'**
  String get aboutText2;

  /// No description provided for @aboutText3.
  ///
  /// In en, this message translates to:
  /// **'If the content bothers you, stop using the app.'**
  String get aboutText3;

  /// No description provided for @shareTitle.
  ///
  /// In en, this message translates to:
  /// **'Share Screen'**
  String get shareTitle;

  /// No description provided for @shareImage.
  ///
  /// In en, this message translates to:
  /// **'Share Counter Screenshot'**
  String get shareImage;

  /// No description provided for @shareText.
  ///
  /// In en, this message translates to:
  /// **'Share the Application as Link'**
  String get shareText;

  /// No description provided for @shareDefaultText.
  ///
  /// In en, this message translates to:
  /// **'I saw my death counter. You see too.'**
  String get shareDefaultText;

  /// No description provided for @menuAbout.
  ///
  /// In en, this message translates to:
  /// **'About'**
  String get menuAbout;

  /// No description provided for @menuEvents.
  ///
  /// In en, this message translates to:
  /// **'Changes of Destiny'**
  String get menuEvents;

  /// No description provided for @menuShare.
  ///
  /// In en, this message translates to:
  /// **'Share Screen'**
  String get menuShare;

  /// No description provided for @menuLanguage.
  ///
  /// In en, this message translates to:
  /// **'Change Language'**
  String get menuLanguage;

  /// No description provided for @recalculateTitle.
  ///
  /// In en, this message translates to:
  /// **'Important Developments'**
  String get recalculateTitle;

  /// No description provided for @recalculateDesc.
  ///
  /// In en, this message translates to:
  /// **'A new mark appeared in his destiny. The remaining time must be recalculated.'**
  String get recalculateDesc;

  /// No description provided for @recalculateButton.
  ///
  /// In en, this message translates to:
  /// **'CALCULATE AGAIN'**
  String get recalculateButton;

  /// No description provided for @noEventYet.
  ///
  /// In en, this message translates to:
  /// **'No change of fate yet.'**
  String get noEventYet;

  /// No description provided for @surveyTitle.
  ///
  /// In en, this message translates to:
  /// **'RISK & LIFE ANALYSIS'**
  String get surveyTitle;

  /// No description provided for @surveyStepText.
  ///
  /// In en, this message translates to:
  /// **'ANALYSIS {step} / 4'**
  String surveyStepText(Object step);

  /// No description provided for @surveyNextButton.
  ///
  /// In en, this message translates to:
  /// **'NEXT'**
  String get surveyNextButton;

  /// No description provided for @surveyCalculateButton.
  ///
  /// In en, this message translates to:
  /// **'CALCULATE DESTINY'**
  String get surveyCalculateButton;

  /// No description provided for @surveyQ1Title.
  ///
  /// In en, this message translates to:
  /// **'SLEEP PATTERN'**
  String get surveyQ1Title;

  /// No description provided for @surveyQ1Desc.
  ///
  /// In en, this message translates to:
  /// **'How many hours do you sleep daily on average?'**
  String get surveyQ1Desc;

  /// No description provided for @surveyQ1Unit.
  ///
  /// In en, this message translates to:
  /// **'{hours} HOURS'**
  String surveyQ1Unit(Object hours);

  /// No description provided for @surveyQ2Title.
  ///
  /// In en, this message translates to:
  /// **'HABITS & TOXINS'**
  String get surveyQ2Title;

  /// No description provided for @surveyQ2Desc.
  ///
  /// In en, this message translates to:
  /// **'Do you regularly consume tobacco, alcohol, or heavy caffeine?'**
  String get surveyQ2Desc;

  /// No description provided for @surveyQ2OptionYes.
  ///
  /// In en, this message translates to:
  /// **'YES'**
  String get surveyQ2OptionYes;

  /// No description provided for @surveyQ2OptionNo.
  ///
  /// In en, this message translates to:
  /// **'NO'**
  String get surveyQ2OptionNo;

  /// No description provided for @surveyQ3Title.
  ///
  /// In en, this message translates to:
  /// **'STRESS & ANXIETY'**
  String get surveyQ3Title;

  /// No description provided for @surveyQ3Desc.
  ///
  /// In en, this message translates to:
  /// **'Rate your daily stress level (1 - 10):'**
  String get surveyQ3Desc;

  /// No description provided for @surveyQ3Unit.
  ///
  /// In en, this message translates to:
  /// **'LEVEL {level}'**
  String surveyQ3Unit(Object level);

  /// No description provided for @surveyQ4Title.
  ///
  /// In en, this message translates to:
  /// **'PHYSICAL ACTIVITY'**
  String get surveyQ4Title;

  /// No description provided for @surveyQ4Desc.
  ///
  /// In en, this message translates to:
  /// **'How many days a week do you exercise?'**
  String get surveyQ4Desc;

  /// No description provided for @surveyQ4Unit.
  ///
  /// In en, this message translates to:
  /// **'{days} DAYS'**
  String surveyQ4Unit(Object days);
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>[
        'ar',
        'bg',
        'bn',
        'ca',
        'cs',
        'da',
        'de',
        'el',
        'en',
        'es',
        'et',
        'fi',
        'fil',
        'fr',
        'gu',
        'he',
        'hi',
        'hr',
        'hu',
        'id',
        'it',
        'ja',
        'kn',
        'ko',
        'lt',
        'lv',
        'ml',
        'mr',
        'ms',
        'nl',
        'no',
        'pa',
        'pl',
        'pt',
        'ro',
        'ru',
        'sk',
        'sl',
        'sr',
        'sv',
        'ta',
        'te',
        'th',
        'tr',
        'uk',
        'ur',
        'vi',
        'zh'
      ].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when language+script codes are specified.
  switch (locale.languageCode) {
    case 'zh':
      {
        switch (locale.scriptCode) {
          case 'Hans':
            return AppLocalizationsZhHans();
          case 'Hant':
            return AppLocalizationsZhHant();
        }
        break;
      }
  }

  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar':
      return AppLocalizationsAr();
    case 'bg':
      return AppLocalizationsBg();
    case 'bn':
      return AppLocalizationsBn();
    case 'ca':
      return AppLocalizationsCa();
    case 'cs':
      return AppLocalizationsCs();
    case 'da':
      return AppLocalizationsDa();
    case 'de':
      return AppLocalizationsDe();
    case 'el':
      return AppLocalizationsEl();
    case 'en':
      return AppLocalizationsEn();
    case 'es':
      return AppLocalizationsEs();
    case 'et':
      return AppLocalizationsEt();
    case 'fi':
      return AppLocalizationsFi();
    case 'fil':
      return AppLocalizationsFil();
    case 'fr':
      return AppLocalizationsFr();
    case 'gu':
      return AppLocalizationsGu();
    case 'he':
      return AppLocalizationsHe();
    case 'hi':
      return AppLocalizationsHi();
    case 'hr':
      return AppLocalizationsHr();
    case 'hu':
      return AppLocalizationsHu();
    case 'id':
      return AppLocalizationsId();
    case 'it':
      return AppLocalizationsIt();
    case 'ja':
      return AppLocalizationsJa();
    case 'kn':
      return AppLocalizationsKn();
    case 'ko':
      return AppLocalizationsKo();
    case 'lt':
      return AppLocalizationsLt();
    case 'lv':
      return AppLocalizationsLv();
    case 'ml':
      return AppLocalizationsMl();
    case 'mr':
      return AppLocalizationsMr();
    case 'ms':
      return AppLocalizationsMs();
    case 'nl':
      return AppLocalizationsNl();
    case 'no':
      return AppLocalizationsNo();
    case 'pa':
      return AppLocalizationsPa();
    case 'pl':
      return AppLocalizationsPl();
    case 'pt':
      return AppLocalizationsPt();
    case 'ro':
      return AppLocalizationsRo();
    case 'ru':
      return AppLocalizationsRu();
    case 'sk':
      return AppLocalizationsSk();
    case 'sl':
      return AppLocalizationsSl();
    case 'sr':
      return AppLocalizationsSr();
    case 'sv':
      return AppLocalizationsSv();
    case 'ta':
      return AppLocalizationsTa();
    case 'te':
      return AppLocalizationsTe();
    case 'th':
      return AppLocalizationsTh();
    case 'tr':
      return AppLocalizationsTr();
    case 'uk':
      return AppLocalizationsUk();
    case 'ur':
      return AppLocalizationsUr();
    case 'vi':
      return AppLocalizationsVi();
    case 'zh':
      return AppLocalizationsZh();
  }

  throw FlutterError(
      'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
      'an issue with the localizations generation tool. Please file an issue '
      'on GitHub with a reproducible sample app and the gen-l10n configuration '
      'that was used.');
}
