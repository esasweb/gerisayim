// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Estonian (`et`).
class AppLocalizationsEt extends AppLocalizations {
  AppLocalizationsEt([String locale = 'et']) : super(locale);

  @override
  String get appTitle => 'Taimeroendur: surmaloendur';

  @override
  String get appTitleShort => 'Surmaloendur';

  @override
  String get notificationPermissionTitle => 'Luba märguanded';

  @override
  String get notificationPermissionText =>
      'Kas soovite saada teateid oluliste sündmuste kohta teie elus, saatuse ja aja muutuste kohta?';

  @override
  String get notificationPermissionYes => 'Jah';

  @override
  String get notificationPermissionNo => 'Ei';

  @override
  String get loading => 'Laadimine...';

  @override
  String get startSubtitle =>
      'Saate oma eeldatava eluea arvesti arvutada ainult üks kord.';

  @override
  String get calculateButton => 'ARVUTAGE';

  @override
  String get oneTimeWarning =>
      'Tulemus luuakse üks kord ja salvestatakse turvaliselt.';

  @override
  String get calculatingTitle => 'Arvutamine';

  @override
  String get estimatedTime => 'Arvestuslik arvutusaeg: 12 minutit';

  @override
  String get fastCalculateButton =>
      'Arvutage kiiresti, vaadates lühikest videot';

  @override
  String get loadingAd => 'Video on ettevalmistamisel...';

  @override
  String get rewardedAdInfo =>
      'Videote vaatamine võimaldab teil arvutamisaja vahele jätta.';

  @override
  String get adNotReady => 'Video pole veel valmis. Palun proovi uuesti.';

  @override
  String get resultTitle => 'JÄÄNUD AEGA';

  @override
  String get years => 'AASTA';

  @override
  String get days => 'PÄEV';

  @override
  String get hours => 'TUND';

  @override
  String get minutes => 'MINUT';

  @override
  String get seconds => 'TEINE';

  @override
  String get importantEvents => 'Olulised arengud';

  @override
  String get importantEvent => 'oluline areng';

  @override
  String get noEvents => 'Olulist arengut veel ei ole.';

  @override
  String get lockedResultWarning =>
      'Seda tulemust ei saa ümber arvutada. Sama kirjet kasutatakse ka siis, kui rakendus kustutatakse.';

  @override
  String get language => 'Keel';

  @override
  String get disclaimerTitle => 'Hoiatus';

  @override
  String get disclaimerText =>
      'See rakendus on mõeldud ainult meelelahutuseks. See ei anna tõest ennustust tervise, surmakuupäeva, eeldatava eluea ega tuleviku kohta.';

  @override
  String get footerWarning =>
      'See on meelelahutuslikel eesmärkidel. See ei ole tegeliku tervise või ellujäämise ennustus.';

  @override
  String get ok => 'Okei';

  @override
  String get eventPositiveTitle => 'Teie elus on toimunud oluline areng';

  @override
  String get eventPositiveDescription =>
      'Süsteemi järgi on teie elueale töödeldud positiivne mõju.';

  @override
  String get eventNegativeTitle => 'Teie elus on toimunud oluline areng';

  @override
  String get eventNegativeDescription =>
      'Süsteemi kohaselt on teie elueale negatiivne mõju.';

  @override
  String get aboutTitle => 'Umbes';

  @override
  String get aboutHeader => 'LOENDUSÜSTEEM // VIIMANE FAIL';

  @override
  String get aboutText1 =>
      'See rakendus on mõeldud ainult meelelahutuseks. See ei anna täpset teavet tegeliku eluea, surmakuupäeva, tervisliku seisundi ega tuleviku kohta.';

  @override
  String get aboutText2 =>
      'Tulemused arvutatakse väljamõeldud ja juhuslikult. See ei ole meditsiiniline, psühholoogiline, juriidiline ega finantsnõustamine.';

  @override
  String get aboutText3 =>
      'Kui sisu häirib teid, lõpetage rakenduse kasutamine.';

  @override
  String get shareTitle => 'Ekraani jagamine';

  @override
  String get shareImage => 'Jaga loenduri ekraanipilti';

  @override
  String get shareText => 'Jagage rakendust lingina';

  @override
  String get shareDefaultText => 'Ma nägin oma surmaloendurit. Näete ka.';

  @override
  String get menuAbout => 'Umbes';

  @override
  String get menuEvents => 'Saatuse muutused';

  @override
  String get menuShare => 'Ekraani jagamine';

  @override
  String get menuLanguage => 'Muuda keelt';

  @override
  String get recalculateTitle => 'Olulised arengud';

  @override
  String get recalculateDesc =>
      'Tema saatusesse ilmus uus märk. Ülejäänud aeg tuleb ümber arvutada.';

  @override
  String get recalculateButton => 'ARVUTAGE VEEL';

  @override
  String get noEventYet => 'Saatus pole veel muutunud.';

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
