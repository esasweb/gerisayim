// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Danish (`da`).
class AppLocalizationsDa extends AppLocalizations {
  AppLocalizationsDa([String locale = 'da']) : super(locale);

  @override
  String get appTitle => 'Nedtælling: Dødstæller';

  @override
  String get appTitleShort => 'Dødstæller';

  @override
  String get notificationPermissionTitle => 'Tillad notifikationer';

  @override
  String get notificationPermissionText =>
      'Vil du gerne modtage meddelelser om vigtige begivenheder i dit liv, ændringer i skæbne og tid?';

  @override
  String get notificationPermissionYes => 'Ja';

  @override
  String get notificationPermissionNo => 'Ingen';

  @override
  String get loading => 'Indlæser...';

  @override
  String get startSubtitle =>
      'Du kan kun beregne din estimerede levetidsmåler én gang.';

  @override
  String get calculateButton => 'BEREGNE';

  @override
  String get oneTimeWarning => 'Resultatet oprettes én gang og gemmes sikkert.';

  @override
  String get calculatingTitle => 'Beregner';

  @override
  String get estimatedTime => 'Estimeret beregningstid: 12 minutter';

  @override
  String get fastCalculateButton => 'Beregn hurtigt ved at se en kort video';

  @override
  String get loadingAd => 'Video er under udarbejdelse...';

  @override
  String get rewardedAdInfo =>
      'Når du ser videoer, kan du springe beregningstiden over.';

  @override
  String get adNotReady => 'Videoen er ikke klar endnu. Prøv venligst igen.';

  @override
  String get resultTitle => 'RESTERENDE TID';

  @override
  String get years => 'ÅR';

  @override
  String get days => 'DAG';

  @override
  String get hours => 'TIME';

  @override
  String get minutes => 'MINUT';

  @override
  String get seconds => 'ANDEN';

  @override
  String get importantEvents => 'Vigtige udviklinger';

  @override
  String get importantEvent => 'vigtig udvikling';

  @override
  String get noEvents => 'Der er endnu ingen væsentlig udvikling.';

  @override
  String get lockedResultWarning =>
      'Dette resultat kan ikke genberegnes. Den samme registrering bruges, selvom applikationen slettes.';

  @override
  String get language => 'Sprog';

  @override
  String get disclaimerTitle => 'Advarsel';

  @override
  String get disclaimerText =>
      'Denne app er kun til underholdningsformål. Det giver ikke en sand forudsigelse af helbred, dødsdato, forventet levetid eller fremtiden.';

  @override
  String get footerWarning =>
      'Det er til underholdningsformål. Det er ikke en forudsigelse af faktisk helbred eller overlevelse.';

  @override
  String get ok => 'Okay';

  @override
  String get eventPositiveTitle => 'Der er sket en vigtig udvikling i dit liv';

  @override
  String get eventPositiveDescription =>
      'Ifølge systemet er der bearbejdet en positiv effekt på din levetid.';

  @override
  String get eventNegativeTitle => 'Der er sket en vigtig udvikling i dit liv';

  @override
  String get eventNegativeDescription =>
      'Ifølge systemet er der begået en negativ indvirkning på din levetid.';

  @override
  String get aboutTitle => 'Om';

  @override
  String get aboutHeader => 'NEDTÆLTNINGSSYSTEM // SIDSTE FIL';

  @override
  String get aboutText1 =>
      'Denne app er kun til underholdningsformål. Den giver ikke nøjagtige oplysninger om faktisk forventet levetid, dødsdato, helbredstilstand eller fremtid.';

  @override
  String get aboutText2 =>
      'Resultaterne er opgjort fiktivt og tilfældigt. Det er ikke medicinsk, psykologisk, juridisk eller økonomisk rådgivning.';

  @override
  String get aboutText3 =>
      'Hvis indholdet generer dig, skal du stoppe med at bruge appen.';

  @override
  String get shareTitle => 'Del skærm';

  @override
  String get shareImage => 'Del tællerskærmbillede';

  @override
  String get shareText => 'Del applikationen som link';

  @override
  String get shareDefaultText => 'Jeg så min dødstæller. Du ser også.';

  @override
  String get menuAbout => 'Om';

  @override
  String get menuEvents => 'Skæbneændringer';

  @override
  String get menuShare => 'Del skærm';

  @override
  String get menuLanguage => 'Skift sprog';

  @override
  String get recalculateTitle => 'Vigtige udviklinger';

  @override
  String get recalculateDesc =>
      'Et nyt mærke viste sig i hans skæbne. Den resterende tid skal genberegnes.';

  @override
  String get recalculateButton => 'BEREGN IGEN';

  @override
  String get noEventYet => 'Endnu ingen skæbneændring.';

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
