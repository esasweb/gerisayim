// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Finnish (`fi`).
class AppLocalizationsFi extends AppLocalizations {
  AppLocalizationsFi([String locale = 'fi']) : super(locale);

  @override
  String get appTitle => 'Lähtölaskenta: Death Counter';

  @override
  String get appTitleShort => 'Kuolemanlaskuri';

  @override
  String get notificationPermissionTitle => 'Salli ilmoitukset';

  @override
  String get notificationPermissionText =>
      'Haluatko saada ilmoituksia elämäsi tärkeistä tapahtumista, kohtalon ja ajan muutoksista?';

  @override
  String get notificationPermissionYes => 'Kyllä';

  @override
  String get notificationPermissionNo => 'Ei';

  @override
  String get loading => 'Ladataan...';

  @override
  String get startSubtitle =>
      'Voit laskea arvioidun käyttöiän mittarin vain kerran.';

  @override
  String get calculateButton => 'LASKEA';

  @override
  String get oneTimeWarning =>
      'Tulos luodaan kerran ja tallennetaan turvallisesti.';

  @override
  String get calculatingTitle => 'Lasketaan';

  @override
  String get estimatedTime => 'Arvioitu laskenta-aika: 12 minuuttia';

  @override
  String get fastCalculateButton => 'Laske nopeasti katsomalla lyhyt video';

  @override
  String get loadingAd => 'Videota valmistellaan...';

  @override
  String get rewardedAdInfo =>
      'Videoita katsomalla voit ohittaa laskenta-ajan.';

  @override
  String get adNotReady => 'Video ei ole vielä valmis. Yritä uudelleen.';

  @override
  String get resultTitle => 'AIKAA JÄLJELLÄ';

  @override
  String get years => 'VUOSI';

  @override
  String get days => 'PÄIVÄ';

  @override
  String get hours => 'TUNNIN';

  @override
  String get minutes => 'MINUUTI';

  @override
  String get seconds => 'TOINEN';

  @override
  String get importantEvents => 'Tärkeitä kehityskulkuja';

  @override
  String get importantEvent => 'tärkeä kehitys';

  @override
  String get noEvents => 'Merkittävää kehitystä ei vielä ole.';

  @override
  String get lockedResultWarning =>
      'Tätä tulosta ei voi laskea uudelleen. Samaa tietuetta käytetään, vaikka sovellus poistetaan.';

  @override
  String get language => 'Kieli';

  @override
  String get disclaimerTitle => 'Varoitus';

  @override
  String get disclaimerText =>
      'Tämä sovellus on tarkoitettu vain viihdetarkoituksiin. Se ei tarjoa todellista ennustetta terveydestä, kuolinpäivästä, elinajanodoteesta tai tulevaisuudesta.';

  @override
  String get footerWarning =>
      'Se on viihdetarkoituksiin. Se ei ole ennuste todellisesta terveydestä tai selviytymisestä.';

  @override
  String get ok => 'Ok';

  @override
  String get eventPositiveTitle =>
      'Elämässäsi on tapahtunut merkittävää kehitystä';

  @override
  String get eventPositiveDescription =>
      'Järjestelmän mukaan elinikääsi on prosessoitu positiivinen vaikutus.';

  @override
  String get eventNegativeTitle =>
      'Elämässäsi on tapahtunut merkittävää kehitystä';

  @override
  String get eventNegativeDescription =>
      'Järjestelmän mukaan eliniänne on vaikuttanut negatiivisesti.';

  @override
  String get aboutTitle => 'Noin';

  @override
  String get aboutHeader => 'LASKENTAJÄRJESTELMÄ // VIIMEINEN TIEDOSTO';

  @override
  String get aboutText1 =>
      'Tämä sovellus on tarkoitettu vain viihdetarkoituksiin. Se ei anna tarkkoja tietoja todellisesta elinajanodoteesta, kuolinpäivästä, terveydentilasta tai tulevaisuudesta.';

  @override
  String get aboutText2 =>
      'Tulokset lasketaan kuvitteellisesti ja satunnaisesti. Se ei ole lääketieteellistä, psykologista, oikeudellista tai taloudellista neuvontaa.';

  @override
  String get aboutText3 =>
      'Jos sisältö häiritsee sinua, lopeta sovelluksen käyttö.';

  @override
  String get shareTitle => 'Jaa näyttö';

  @override
  String get shareImage => 'Jaa laskurin kuvakaappaus';

  @override
  String get shareText => 'Jaa sovellus linkkinä';

  @override
  String get shareDefaultText => 'Näin kuolemanlaskurini. Sinäkin näet.';

  @override
  String get menuAbout => 'Noin';

  @override
  String get menuEvents => 'Kohtalon muutokset';

  @override
  String get menuShare => 'Jaa näyttö';

  @override
  String get menuLanguage => 'Vaihda kieli';

  @override
  String get recalculateTitle => 'Tärkeitä kehityskulkuja';

  @override
  String get recalculateDesc =>
      'Hänen kohtalossaan ilmestyi uusi merkki. Jäljellä oleva aika on laskettava uudelleen.';

  @override
  String get recalculateButton => 'LASKE UUDELLEEN';

  @override
  String get noEventYet => 'Ei vielä kohtalon muutosta.';

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
