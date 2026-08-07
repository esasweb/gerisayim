// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Dutch Flemish (`nl`).
class AppLocalizationsNl extends AppLocalizations {
  AppLocalizationsNl([String locale = 'nl']) : super(locale);

  @override
  String get appTitle => 'Aftellen: Doodsteller';

  @override
  String get appTitleShort => 'Doodsteller';

  @override
  String get notificationPermissionTitle => 'Meldingen toestaan';

  @override
  String get notificationPermissionText =>
      'Wilt u meldingen ontvangen over belangrijke gebeurtenissen in uw leven, veranderingen in het lot en de tijd?';

  @override
  String get notificationPermissionYes => 'Ja';

  @override
  String get notificationPermissionNo => 'Nee';

  @override
  String get loading => 'Laden...';

  @override
  String get startSubtitle =>
      'U kunt uw geschatte levensmeter slechts één keer berekenen.';

  @override
  String get calculateButton => 'BEREKENEN';

  @override
  String get oneTimeWarning =>
      'Het resultaat wordt eenmalig aangemaakt en veilig opgeslagen.';

  @override
  String get calculatingTitle => 'Berekenen';

  @override
  String get estimatedTime => 'Geschatte rekentijd: 12 minuten';

  @override
  String get fastCalculateButton =>
      'Bereken snel door een korte video te bekijken';

  @override
  String get loadingAd => 'Video wordt voorbereid...';

  @override
  String get rewardedAdInfo =>
      'Door video\'s te bekijken, kunt u de rekentijd overslaan.';

  @override
  String get adNotReady =>
      'Het filmpje is nog niet klaar. Probeer het opnieuw.';

  @override
  String get resultTitle => 'RESTERENDE TIJD';

  @override
  String get years => 'JAAR';

  @override
  String get days => 'DAG';

  @override
  String get hours => 'UUR';

  @override
  String get minutes => 'MINUUT';

  @override
  String get seconds => 'SECONDE';

  @override
  String get importantEvents => 'Belangrijke ontwikkelingen';

  @override
  String get importantEvent => 'belangrijke ontwikkeling';

  @override
  String get noEvents => 'Er is nog geen noemenswaardige ontwikkeling.';

  @override
  String get lockedResultWarning =>
      'Dit resultaat kan niet opnieuw worden berekend. Hetzelfde record wordt gebruikt, zelfs als de applicatie wordt verwijderd.';

  @override
  String get language => 'Taal';

  @override
  String get disclaimerTitle => 'Waarschuwing';

  @override
  String get disclaimerText =>
      'Deze app is uitsluitend bedoeld voor amusementsdoeleinden. Het geeft geen echte voorspelling van de gezondheid, de datum van overlijden, de levensverwachting of de toekomst.';

  @override
  String get footerWarning =>
      'Het is voor amusementsdoeleinden. Het is geen voorspelling van de daadwerkelijke gezondheid of overleving.';

  @override
  String get ok => 'OK';

  @override
  String get eventPositiveTitle =>
      'Er heeft zich een belangrijke ontwikkeling in uw leven voorgedaan';

  @override
  String get eventPositiveDescription =>
      'Volgens het systeem is er een positief effect op je levensduur verwerkt.';

  @override
  String get eventNegativeTitle =>
      'Er heeft zich een belangrijke ontwikkeling in uw leven voorgedaan';

  @override
  String get eventNegativeDescription =>
      'Volgens het systeem is er sprake van een negatieve impact op uw levensduur.';

  @override
  String get aboutTitle => 'Over';

  @override
  String get aboutHeader => 'COUNTDOWN SYSTEEM // LAATSTE BESTAND';

  @override
  String get aboutText1 =>
      'Deze app is uitsluitend bedoeld voor amusementsdoeleinden. Het geeft geen nauwkeurige informatie over de werkelijke levensverwachting, de datum van overlijden, de gezondheidsstatus of de toekomst.';

  @override
  String get aboutText2 =>
      'De resultaten worden fictief en willekeurig berekend. Het is geen medisch, psychologisch, juridisch of financieel advies.';

  @override
  String get aboutText3 =>
      'Als de inhoud u stoort, stop dan met het gebruik van de app.';

  @override
  String get shareTitle => 'Deel scherm';

  @override
  String get shareImage => 'Deel tellerscreenshot';

  @override
  String get shareText => 'Deel de applicatie als link';

  @override
  String get shareDefaultText => 'Ik zag mijn dodenteller. Zie jij ook.';

  @override
  String get menuAbout => 'Over';

  @override
  String get menuEvents => 'Veranderingen van het lot';

  @override
  String get menuShare => 'Deel scherm';

  @override
  String get menuLanguage => 'Taal wijzigen';

  @override
  String get recalculateTitle => 'Belangrijke ontwikkelingen';

  @override
  String get recalculateDesc =>
      'Er verscheen een nieuw teken in zijn lot. De resterende tijd moet opnieuw worden berekend.';

  @override
  String get recalculateButton => 'BEREKEN OPNIEUW';

  @override
  String get noEventYet => 'Nog geen verandering van lot.';

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
