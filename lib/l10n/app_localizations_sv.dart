// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Swedish (`sv`).
class AppLocalizationsSv extends AppLocalizations {
  AppLocalizationsSv([String locale = 'sv']) : super(locale);

  @override
  String get appTitle => 'Nedräkning: Death Counter';

  @override
  String get appTitleShort => 'Dödsräknare';

  @override
  String get notificationPermissionTitle => 'Tillåt aviseringar';

  @override
  String get notificationPermissionText =>
      'Vill du få meddelanden om viktiga händelser i ditt liv, förändringar i öde och tid?';

  @override
  String get notificationPermissionYes => 'Ja';

  @override
  String get notificationPermissionNo => 'Inga';

  @override
  String get loading => 'Belastning...';

  @override
  String get startSubtitle =>
      'Du kan bara beräkna din beräknade livslängdsmätare en gång.';

  @override
  String get calculateButton => 'KALKYLERA';

  @override
  String get oneTimeWarning => 'Resultatet skapas en gång och sparas säkert.';

  @override
  String get calculatingTitle => 'Beräknande';

  @override
  String get estimatedTime => 'Det kan ta längre tid än beräknat';

  @override
  String get fastCalculateButton =>
      'Räkna snabbt genom att titta på en kort video';

  @override
  String get loadingAd => 'Video förbereds...';

  @override
  String get rewardedAdInfo =>
      'Genom att titta på videor kan du hoppa över beräkningstiden.';

  @override
  String get adNotReady => 'Videon är inte klar än. Försök igen.';

  @override
  String get resultTitle => 'ÅTERSTÅENDE TID';

  @override
  String get years => 'ÅR';

  @override
  String get days => 'DAG';

  @override
  String get months => 'MÅNAD';

  @override
  String get hours => 'TIMME';

  @override
  String get minutes => 'MINUT';

  @override
  String get seconds => 'ANDRA';

  @override
  String get importantEvents => 'Viktig utveckling';

  @override
  String get importantEvent => 'viktig utveckling';

  @override
  String get noEvents => 'Det finns ingen nämnvärd utveckling ännu.';

  @override
  String get lockedResultWarning =>
      'Detta resultat kan inte räknas om. Samma post används även om applikationen raderas.';

  @override
  String get language => 'Språk';

  @override
  String get disclaimerTitle => 'Varning';

  @override
  String get disclaimerText =>
      'Denna app är endast för underhållningsändamål. Det ger inte en sann förutsägelse av hälsa, dödsdatum, förväntad livslängd eller framtiden.';

  @override
  String get footerWarning =>
      'Det är i underhållningssyfte. Det är inte en förutsägelse av faktisk hälsa eller överlevnad.';

  @override
  String get ok => 'Ok';

  @override
  String get eventPositiveTitle =>
      'Det har skett en viktig utveckling i ditt liv';

  @override
  String get eventPositiveDescription =>
      'Enligt systemet har en positiv effekt bearbetats på din livslängd.';

  @override
  String get eventNegativeTitle =>
      'Det har skett en viktig utveckling i ditt liv';

  @override
  String get eventNegativeDescription =>
      'Enligt systemet har en negativ inverkan på din livslängd begåtts.';

  @override
  String get aboutTitle => 'Om';

  @override
  String get aboutHeader => 'NEDLÄKNINGSSYSTEM // SISTA FIL';

  @override
  String get aboutText1 =>
      'Denna app är endast för underhållningsändamål. Den ger inte korrekt information om faktisk förväntad livslängd, dödsdatum, hälsotillstånd eller framtid.';

  @override
  String get aboutText2 =>
      'Resultaten beräknas fiktivt och slumpmässigt. Det är inte medicinsk, psykologisk, juridisk eller ekonomisk rådgivning.';

  @override
  String get aboutText3 => 'Om innehållet stör dig, sluta använda appen.';

  @override
  String get shareTitle => 'Dela skärm';

  @override
  String get shareImage => 'Dela Counter Screenshot';

  @override
  String get shareText => 'Dela applikationen som länk';

  @override
  String get shareDefaultText => 'Jag såg min dödsräknare. Du ser också.';

  @override
  String get menuAbout => 'Om';

  @override
  String get menuEvents => 'Ödesändringar';

  @override
  String get menuShare => 'Dela skärm';

  @override
  String get menuLanguage => 'Byt språk';

  @override
  String get recalculateTitle => 'Viktig utveckling';

  @override
  String get recalculateDesc =>
      'Ett nytt märke dök upp i hans öde. Den återstående tiden måste räknas om.';

  @override
  String get recalculateButton => 'BERÄKNA IGEN';

  @override
  String get noEventYet => 'Ännu ingen ödeändring.';

  @override
  String get surveyTitle => 'RISK- OCH ÖVERLEVNINGSANALYS';

  @override
  String surveyStepText(Object step) {
    return 'ANALYS $step / 4';
  }

  @override
  String get surveyNextButton => 'FORTSÄTTA';

  @override
  String get surveyCalculateButton => 'BERÄKNA DITT ÖDE';

  @override
  String get surveyQ1Title => 'SÖMVÖNSTER';

  @override
  String get surveyQ1Desc => 'Hur många timmar sover du i genomsnitt per dag?';

  @override
  String surveyQ1Unit(Object hours) {
    return '$hours KLOCKAN';
  }

  @override
  String get surveyQ2Title => 'SKADLIGA VANOR';

  @override
  String get surveyQ2Desc =>
      'Dricker du regelbundet tobak, alkohol eller mycket koffein?';

  @override
  String get surveyQ2OptionYes => 'JA';

  @override
  String get surveyQ2OptionNo => 'INGA';

  @override
  String get surveyQ3Title => 'STRESS OCH ÅNGE';

  @override
  String get surveyQ3Desc => 'Betygsätt din dagliga stressnivå (1 - 10):';

  @override
  String surveyQ3Unit(Object level) {
    return 'NIVÅ $level';
  }

  @override
  String get surveyQ4Title => 'FYSISK AKTIVITET';

  @override
  String get surveyQ4Desc => 'Hur många dagar i veckan tränar du?';

  @override
  String surveyQ4Unit(Object days) {
    return '$days DAGAR';
  }
}
