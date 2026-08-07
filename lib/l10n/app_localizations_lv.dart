// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Latvian (`lv`).
class AppLocalizationsLv extends AppLocalizations {
  AppLocalizationsLv([String locale = 'lv']) : super(locale);

  @override
  String get appTitle => 'Atpakaļskaitīšana: nāves skaitītājs';

  @override
  String get appTitleShort => 'Nāves skaitītājs';

  @override
  String get notificationPermissionTitle => 'Atļaut paziņojumus';

  @override
  String get notificationPermissionText =>
      'Vai vēlaties saņemt paziņojumus par svarīgiem notikumiem savā dzīvē, likteņa un laika izmaiņām?';

  @override
  String get notificationPermissionYes => 'Jā';

  @override
  String get notificationPermissionNo => 'Nē';

  @override
  String get loading => 'Notiek ielāde...';

  @override
  String get startSubtitle =>
      'Aprēķināto dzīves ilguma mērītāju varat aprēķināt tikai vienu reizi.';

  @override
  String get calculateButton => 'APRĒĶINI';

  @override
  String get oneTimeWarning =>
      'Rezultāts tiek izveidots vienreiz un droši saglabāts.';

  @override
  String get calculatingTitle => 'Aprēķinot';

  @override
  String get estimatedTime => 'Paredzamais aprēķinu laiks: 12 minūtes';

  @override
  String get fastCalculateButton => 'Aprēķiniet ātri, noskatoties īsu video';

  @override
  String get loadingAd => 'Video tiek gatavots...';

  @override
  String get rewardedAdInfo =>
      'Videoklipu skatīšanās ļauj izlaist aprēķina laiku.';

  @override
  String get adNotReady => 'Video vēl nav gatavs. Lūdzu, mēģiniet vēlreiz.';

  @override
  String get resultTitle => 'ATLIKUŠAIS LAIKS';

  @override
  String get years => 'GADS';

  @override
  String get days => 'DIENA';

  @override
  String get hours => 'STUNDA';

  @override
  String get minutes => 'MINŪTE';

  @override
  String get seconds => 'OTRĀ';

  @override
  String get importantEvents => 'Svarīgi notikumi';

  @override
  String get importantEvent => 'svarīga attīstība';

  @override
  String get noEvents => 'Būtiskas attīstības vēl nav.';

  @override
  String get lockedResultWarning =>
      'Šo rezultātu nevar pārrēķināt. Tas pats ieraksts tiek izmantots pat tad, ja lietojumprogramma tiek dzēsta.';

  @override
  String get language => 'Valoda';

  @override
  String get disclaimerTitle => 'Brīdinājums';

  @override
  String get disclaimerText =>
      'Šī lietotne ir paredzēta tikai izklaides nolūkiem. Tas nesniedz patiesas prognozes par veselību, nāves datumu, paredzamo dzīves ilgumu vai nākotni.';

  @override
  String get footerWarning =>
      'Tas ir paredzēts izklaides nolūkiem. Tā nav faktiskās veselības vai izdzīvošanas prognoze.';

  @override
  String get ok => 'Labi';

  @override
  String get eventPositiveTitle => 'Jūsu dzīvē ir notikusi nozīmīga attīstība';

  @override
  String get eventPositiveDescription =>
      'Saskaņā ar sistēmu jūsu dzīves ilgumam ir bijusi pozitīva ietekme.';

  @override
  String get eventNegativeTitle => 'Jūsu dzīvē ir notikusi nozīmīga attīstība';

  @override
  String get eventNegativeDescription =>
      'Saskaņā ar sistēmu jūsu dzīves ilgums ir negatīvi ietekmēts.';

  @override
  String get aboutTitle => 'Par';

  @override
  String get aboutHeader => 'ATSKAITES SISTĒMA // PĒDĒJAIS FAILS';

  @override
  String get aboutText1 =>
      'Šī lietotne ir paredzēta tikai izklaides nolūkiem. Tas nesniedz precīzu informāciju par faktisko paredzamo dzīves ilgumu, nāves datumu, veselības stāvokli vai nākotni.';

  @override
  String get aboutText2 =>
      'Rezultāti tiek aprēķināti izdomāti un nejauši. Tās nav medicīniskas, psiholoģiskas, juridiskas vai finansiālas konsultācijas.';

  @override
  String get aboutText3 => 'Ja saturs jūs traucē, pārtrauciet lietotni.';

  @override
  String get shareTitle => 'Kopīgot ekrānu';

  @override
  String get shareImage => 'Kopīgojiet skaitītāja ekrānuzņēmumu';

  @override
  String get shareText => 'Kopīgojiet lietojumprogrammu kā saiti';

  @override
  String get shareDefaultText =>
      'Es redzēju savu nāves skaitītāju. Tu arī redzi.';

  @override
  String get menuAbout => 'Par';

  @override
  String get menuEvents => 'Likteņa pārmaiņas';

  @override
  String get menuShare => 'Kopīgot ekrānu';

  @override
  String get menuLanguage => 'Mainīt valodu';

  @override
  String get recalculateTitle => 'Svarīgi notikumi';

  @override
  String get recalculateDesc =>
      'Viņa liktenī parādījās jauna zīme. Atlikušais laiks ir jāpārrēķina.';

  @override
  String get recalculateButton => 'APRĒĶINI VĒLREIZ';

  @override
  String get noEventYet => 'Liktenis vēl nav mainījies.';

  @override
  String get surveyTitle => 'RISK & LIFE ANALYSIS';

  @override
  String surveyStepText(Object step) {
    return 'ANALYSIS $step / 4';
  }

  @override
  String get surveyNextButton => 'NEXT';

  @override
  String get surveyCalculateButton => 'CALCULATE DESTINY';

  @override
  String get surveyQ1Title => 'SLEEP PATTERN';

  @override
  String get surveyQ1Desc => 'How many hours do you sleep daily on average?';

  @override
  String surveyQ1Unit(Object hours) {
    return '$hours HOURS';
  }

  @override
  String get surveyQ2Title => 'HABITS & TOXINS';

  @override
  String get surveyQ2Desc =>
      'Do you regularly consume tobacco, alcohol, or heavy caffeine?';

  @override
  String get surveyQ2OptionYes => 'YES';

  @override
  String get surveyQ2OptionNo => 'NO';

  @override
  String get surveyQ3Title => 'STRESS & ANXIETY';

  @override
  String get surveyQ3Desc => 'Rate your daily stress level (1 - 10):';

  @override
  String surveyQ3Unit(Object level) {
    return 'LEVEL $level';
  }

  @override
  String get surveyQ4Title => 'PHYSICAL ACTIVITY';

  @override
  String get surveyQ4Desc => 'How many days a week do you exercise?';

  @override
  String surveyQ4Unit(Object days) {
    return '$days DAYS';
  }
}
