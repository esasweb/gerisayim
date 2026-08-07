// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Norwegian (`no`).
class AppLocalizationsNo extends AppLocalizations {
  AppLocalizationsNo([String locale = 'no']) : super(locale);

  @override
  String get appTitle => 'Nedtelling: Death Counter';

  @override
  String get appTitleShort => 'Dødsteller';

  @override
  String get notificationPermissionTitle => 'Tillat varsler';

  @override
  String get notificationPermissionText =>
      'Vil du motta varsler om viktige hendelser i livet ditt, endringer i skjebne og tid?';

  @override
  String get notificationPermissionYes => 'Ja';

  @override
  String get notificationPermissionNo => 'Ingen';

  @override
  String get loading => 'Laster inn...';

  @override
  String get startSubtitle =>
      'Du kan bare beregne din estimerte levetidsmåler én gang.';

  @override
  String get calculateButton => 'KALKULERE';

  @override
  String get oneTimeWarning =>
      'Resultatet opprettes én gang og lagres sikkert.';

  @override
  String get calculatingTitle => 'Beregner';

  @override
  String get estimatedTime => 'Estimert beregningstid: 12 minutter';

  @override
  String get fastCalculateButton => 'Beregn raskt ved å se en kort video';

  @override
  String get loadingAd => 'Video er under utarbeidelse...';

  @override
  String get rewardedAdInfo =>
      'Når du ser på videoer, kan du hoppe over beregningstiden.';

  @override
  String get adNotReady => 'Videoen er ikke klar ennå. Vennligst prøv igjen.';

  @override
  String get resultTitle => 'RESTERENDE TID';

  @override
  String get years => 'ÅR';

  @override
  String get days => 'DAG';

  @override
  String get hours => 'TIME';

  @override
  String get minutes => 'MINUTT';

  @override
  String get seconds => 'SEKUND';

  @override
  String get importantEvents => 'Viktig utvikling';

  @override
  String get importantEvent => 'viktig utvikling';

  @override
  String get noEvents => 'Det er ingen vesentlig utvikling ennå.';

  @override
  String get lockedResultWarning =>
      'Dette resultatet kan ikke beregnes på nytt. Den samme posten brukes selv om applikasjonen slettes.';

  @override
  String get language => 'Språk';

  @override
  String get disclaimerTitle => 'Advarsel';

  @override
  String get disclaimerText =>
      'Denne appen er kun for underholdningsformål. Det gir ikke en sann prediksjon om helse, dødsdato, forventet levealder eller fremtiden.';

  @override
  String get footerWarning =>
      'Det er for underholdningsformål. Det er ikke en spådom om faktisk helse eller overlevelse.';

  @override
  String get ok => 'Ok';

  @override
  String get eventPositiveTitle =>
      'Det har vært en viktig utvikling i livet ditt';

  @override
  String get eventPositiveDescription =>
      'Ifølge systemet er det bearbeidet en positiv effekt på levetiden din.';

  @override
  String get eventNegativeTitle =>
      'Det har vært en viktig utvikling i livet ditt';

  @override
  String get eventNegativeDescription =>
      'Ifølge systemet har en negativ innvirkning på levetiden din blitt begått.';

  @override
  String get aboutTitle => 'Om';

  @override
  String get aboutHeader => 'NEDTELLINGSSYSTEM // SISTE FIL';

  @override
  String get aboutText1 =>
      'Denne appen er kun for underholdningsformål. Den gir ikke nøyaktig informasjon om faktisk forventet levealder, dødsdato, helsestatus eller fremtid.';

  @override
  String get aboutText2 =>
      'Resultatene beregnes fiktivt og tilfeldig. Det er ikke medisinsk, psykologisk, juridisk eller økonomisk rådgivning.';

  @override
  String get aboutText3 => 'Hvis innholdet plager deg, slutt å bruke appen.';

  @override
  String get shareTitle => 'Del skjerm';

  @override
  String get shareImage => 'Del Counter-skjermbilde';

  @override
  String get shareText => 'Del applikasjonen som lenke';

  @override
  String get shareDefaultText => 'Jeg så dødtelleren min. Du ser også.';

  @override
  String get menuAbout => 'Om';

  @override
  String get menuEvents => 'Endringer av skjebne';

  @override
  String get menuShare => 'Del skjerm';

  @override
  String get menuLanguage => 'Endre språk';

  @override
  String get recalculateTitle => 'Viktig utvikling';

  @override
  String get recalculateDesc =>
      'Et nytt merke dukket opp i hans skjebne. Gjenstående tid må beregnes på nytt.';

  @override
  String get recalculateButton => 'BEREGN IGJEN';

  @override
  String get noEventYet => 'Ingen skjebneendring ennå.';

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
