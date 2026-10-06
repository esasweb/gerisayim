// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Lithuanian (`lt`).
class AppLocalizationsLt extends AppLocalizations {
  AppLocalizationsLt([String locale = 'lt']) : super(locale);

  @override
  String get appTitle => 'Atgalinis skaičiavimas: Mirties skaitiklis';

  @override
  String get appTitleShort => 'Mirties skaitiklis';

  @override
  String get notificationPermissionTitle => 'Leisti pranešimus';

  @override
  String get notificationPermissionText =>
      'Ar norėtumėte gauti pranešimus apie svarbius savo gyvenimo įvykius, likimo ir laiko pokyčius?';

  @override
  String get notificationPermissionYes => 'Taip';

  @override
  String get notificationPermissionNo => 'Nr';

  @override
  String get loading => 'Įkeliama...';

  @override
  String get startSubtitle =>
      'Apskaičiuotą gyvenimo trukmės matuoklį galite apskaičiuoti tik vieną kartą.';

  @override
  String get calculateButton => 'APSKAIČIUOTI';

  @override
  String get oneTimeWarning =>
      'Rezultatas sukuriamas vieną kartą ir saugiai išsaugomas.';

  @override
  String get calculatingTitle => 'Skaičiuojant';

  @override
  String get estimatedTime => 'Tai gali užtrukti ilgiau nei numatyta';

  @override
  String get fastCalculateButton =>
      'Greitai apskaičiuokite žiūrėdami trumpą vaizdo įrašą';

  @override
  String get loadingAd => 'Vaizdo įrašas ruošiamas...';

  @override
  String get rewardedAdInfo =>
      'Žiūrėdami vaizdo įrašus galite praleisti skaičiavimo laiką.';

  @override
  String get adNotReady =>
      'Vaizdo įrašas dar neparengtas. Bandykite dar kartą.';

  @override
  String get resultTitle => 'LIKO LAIKO';

  @override
  String get years => 'METAI';

  @override
  String get days => 'DIENA';

  @override
  String get months => 'MĖNESIS';

  @override
  String get hours => 'VALANDA';

  @override
  String get minutes => 'MINUTĖ';

  @override
  String get seconds => 'ANTRA';

  @override
  String get importantEvents => 'Svarbūs įvykiai';

  @override
  String get importantEvent => 'svarbi plėtra';

  @override
  String get noEvents => 'Kol kas reikšmingos plėtros nėra.';

  @override
  String get lockedResultWarning =>
      'Šio rezultato perskaičiuoti negalima. Tas pats įrašas naudojamas net ištrynus programą.';

  @override
  String get language => 'Kalba';

  @override
  String get disclaimerTitle => 'Įspėjimas';

  @override
  String get disclaimerText =>
      'Ši programa skirta tik pramogoms. Tai nepateikia tikros sveikatos, mirties datos, gyvenimo trukmės ar ateities prognozės.';

  @override
  String get footerWarning =>
      'Jis skirtas pramogoms. Tai nėra tikrosios sveikatos ar išgyvenimo prognozė.';

  @override
  String get ok => 'Gerai';

  @override
  String get eventPositiveTitle => 'Jūsų gyvenime įvyko svarbus pokytis';

  @override
  String get eventPositiveDescription =>
      'Pagal sistemą teigiamas poveikis jūsų gyvenimo trukmei.';

  @override
  String get eventNegativeTitle => 'Jūsų gyvenime įvyko svarbus pokytis';

  @override
  String get eventNegativeDescription =>
      'Pagal sistemą buvo padarytas neigiamas poveikis jūsų gyvenimo trukmei.';

  @override
  String get aboutTitle => 'Apie';

  @override
  String get aboutHeader => 'ATGALIOJIMO SISTEMA // PASKUTINIS FAILAS';

  @override
  String get aboutText1 =>
      'Ši programa skirta tik pramogoms. Tai nepateikia tikslios informacijos apie tikrąją gyvenimo trukmę, mirties datą, sveikatos būklę ar ateitį.';

  @override
  String get aboutText2 =>
      'Rezultatai skaičiuojami išgalvotu ir atsitiktiniu būdu. Tai nėra medicininės, psichologinės, teisinės ar finansinės konsultacijos.';

  @override
  String get aboutText3 =>
      'Jei turinys jus trikdo, nustokite naudotis programa.';

  @override
  String get shareTitle => 'Bendrinti ekraną';

  @override
  String get shareImage => 'Bendrinkite skaitiklio ekrano kopiją';

  @override
  String get shareText => 'Bendrinkite programą kaip nuorodą';

  @override
  String get shareDefaultText =>
      'Pamačiau savo mirties skaitiklį. Matai ir tu.';

  @override
  String get menuAbout => 'Apie';

  @override
  String get menuEvents => 'Likimo pokyčiai';

  @override
  String get menuShare => 'Bendrinti ekraną';

  @override
  String get menuLanguage => 'Keisti kalbą';

  @override
  String get recalculateTitle => 'Svarbūs įvykiai';

  @override
  String get recalculateDesc =>
      'Jo likime atsirado naujas ženklas. Likęs laikas turi būti perskaičiuotas.';

  @override
  String get recalculateButton => 'SKAIČIUOK DAR KARTĄ';

  @override
  String get noEventYet => 'Kol kas likimas nepasikeitė.';

  @override
  String get surveyTitle => 'RIZIKOS IR IŠLIEKIMO ANALIZĖ';

  @override
  String surveyStepText(Object step) {
    return 'ANALIZĖ $step / 4';
  }

  @override
  String get surveyNextButton => 'TĘSTI';

  @override
  String get surveyCalculateButton => 'APSKAIČIUOKITE SAVO LIKIMĄ';

  @override
  String get surveyQ1Title => 'MIEGO RAŠTAS';

  @override
  String get surveyQ1Desc => 'Kiek valandų vidutiniškai miegate per dieną?';

  @override
  String surveyQ1Unit(Object hours) {
    return '„$hours“ LAIKRODIS';
  }

  @override
  String get surveyQ2Title => 'ŽALINGI ĮPROČIAI';

  @override
  String get surveyQ2Desc =>
      'Ar reguliariai vartojate tabaką, alkoholį ar daug kofeino?';

  @override
  String get surveyQ2OptionYes => 'TAIP';

  @override
  String get surveyQ2OptionNo => 'NE';

  @override
  String get surveyQ3Title => 'STRESAS IR NERIMAS';

  @override
  String get surveyQ3Desc => 'Įvertinkite savo dienos streso lygį (1–10):';

  @override
  String surveyQ3Unit(Object level) {
    return 'LYGIS $level';
  }

  @override
  String get surveyQ4Title => 'FIZINIS AKTYVUMAS';

  @override
  String get surveyQ4Desc => 'Kiek dienų per savaitę sportuojate?';

  @override
  String surveyQ4Unit(Object days) {
    return '$days DIENOS';
  }
}
