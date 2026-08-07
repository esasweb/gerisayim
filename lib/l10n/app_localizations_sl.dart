// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Slovenian (`sl`).
class AppLocalizationsSl extends AppLocalizations {
  AppLocalizationsSl([String locale = 'sl']) : super(locale);

  @override
  String get appTitle => 'Odštevanje: števec smrti';

  @override
  String get appTitleShort => 'Števec smrti';

  @override
  String get notificationPermissionTitle => 'Dovoli obvestila';

  @override
  String get notificationPermissionText =>
      'Ali želite prejemati obvestila o pomembnih dogodkih v vašem življenju, spremembah v usodi in času?';

  @override
  String get notificationPermissionYes => 'ja';

  @override
  String get notificationPermissionNo => 'št';

  @override
  String get loading => 'Nalaganje...';

  @override
  String get startSubtitle =>
      'Ocenjeno življenjsko dobo lahko izračunate samo enkrat.';

  @override
  String get calculateButton => 'IZRAČUNAJ';

  @override
  String get oneTimeWarning => 'Rezultat se ustvari enkrat in varno shrani.';

  @override
  String get calculatingTitle => 'Računanje';

  @override
  String get estimatedTime => 'Predviden čas izračuna: 12 minut';

  @override
  String get fastCalculateButton =>
      'Hitro izračunajte z ogledom kratkega videa';

  @override
  String get loadingAd => 'Video je v pripravi...';

  @override
  String get rewardedAdInfo =>
      'Gledanje videoposnetkov vam omogoča, da preskočite čas izračuna.';

  @override
  String get adNotReady => 'Video še ni pripravljen. prosim poskusite ponovno';

  @override
  String get resultTitle => 'PREOSTALI ČAS';

  @override
  String get years => 'LETO';

  @override
  String get days => 'DAN';

  @override
  String get hours => 'URA';

  @override
  String get minutes => 'MINUTA';

  @override
  String get seconds => 'DRUGI';

  @override
  String get importantEvents => 'Pomembni dogodki';

  @override
  String get importantEvent => 'pomemben razvoj';

  @override
  String get noEvents => 'Bistvenega razvoja še ni.';

  @override
  String get lockedResultWarning =>
      'Tega rezultata ni mogoče ponovno izračunati. Isti zapis se uporablja tudi, če je aplikacija izbrisana.';

  @override
  String get language => 'Jezik';

  @override
  String get disclaimerTitle => 'Opozorilo';

  @override
  String get disclaimerText =>
      'Ta aplikacija je samo za zabavo. Ne zagotavlja prave napovedi zdravja, datuma smrti, pričakovane življenjske dobe ali prihodnosti.';

  @override
  String get footerWarning =>
      'Namenjen je za zabavo. To ni napoved dejanskega zdravja ali preživetja.';

  @override
  String get ok => 'OK';

  @override
  String get eventPositiveTitle =>
      'V vašem življenju se je zgodil pomemben razvoj';

  @override
  String get eventPositiveDescription =>
      'Po sistemu je bil obdelan pozitiven učinek na vašo življenjsko dobo.';

  @override
  String get eventNegativeTitle =>
      'V vašem življenju se je zgodil pomemben razvoj';

  @override
  String get eventNegativeDescription =>
      'Po sistemu je bil storjen negativen vpliv na vašo življenjsko dobo.';

  @override
  String get aboutTitle => 'O tem';

  @override
  String get aboutHeader => 'SISTEM ODŠTEVANJA // ZADNJA DATOTEKA';

  @override
  String get aboutText1 =>
      'Ta aplikacija je samo za zabavo. Ne zagotavlja natančnih informacij o dejanski pričakovani življenjski dobi, datumu smrti, zdravstvenem stanju ali prihodnosti.';

  @override
  String get aboutText2 =>
      'Rezultati so izračunani fiktivno in naključno. To ni medicinski, psihološki, pravni ali finančni nasvet.';

  @override
  String get aboutText3 =>
      'Če vas vsebina moti, prenehajte uporabljati aplikacijo.';

  @override
  String get shareTitle => 'Delite zaslon';

  @override
  String get shareImage => 'Posnetek zaslona števca deljenja';

  @override
  String get shareText => 'Delite aplikacijo kot povezavo';

  @override
  String get shareDefaultText => 'Videl sem svoj števec smrti. Vidiš tudi.';

  @override
  String get menuAbout => 'O tem';

  @override
  String get menuEvents => 'Spremembe usode';

  @override
  String get menuShare => 'Delite zaslon';

  @override
  String get menuLanguage => 'Spremeni jezik';

  @override
  String get recalculateTitle => 'Pomembni dogodki';

  @override
  String get recalculateDesc =>
      'V njegovi usodi se je pojavil nov znak. Preostali čas je treba ponovno izračunati.';

  @override
  String get recalculateButton => 'IZRAČUNAJ ZNOVA';

  @override
  String get noEventYet => 'Brez spremembe usode.';

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
