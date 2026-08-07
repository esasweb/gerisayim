// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Czech (`cs`).
class AppLocalizationsCs extends AppLocalizations {
  AppLocalizationsCs([String locale = 'cs']) : super(locale);

  @override
  String get appTitle => 'Odpočítávání: Počítadlo smrti';

  @override
  String get appTitleShort => 'Počítadlo smrti';

  @override
  String get notificationPermissionTitle => 'Povolit oznámení';

  @override
  String get notificationPermissionText =>
      'Chcete dostávat upozornění na důležité události ve vašem životě, změny osudu a času?';

  @override
  String get notificationPermissionYes => 'Ano';

  @override
  String get notificationPermissionNo => 'Žádný';

  @override
  String get loading => 'Načítání...';

  @override
  String get startSubtitle =>
      'Odhadovanou životnost můžete vypočítat pouze jednou.';

  @override
  String get calculateButton => 'VYPOČÍTAT';

  @override
  String get oneTimeWarning => 'Výsledek je vytvořen jednou a bezpečně uložen.';

  @override
  String get calculatingTitle => 'Počítání';

  @override
  String get estimatedTime => 'Předpokládaná doba výpočtu: 12 minut';

  @override
  String get fastCalculateButton =>
      'Počítejte rychle sledováním krátkého videa';

  @override
  String get loadingAd => 'Video se připravuje...';

  @override
  String get rewardedAdInfo =>
      'Sledování videí umožňuje přeskočit čas výpočtu.';

  @override
  String get adNotReady => 'Video ještě není hotové. Zkuste to prosím znovu.';

  @override
  String get resultTitle => 'ZBÝVAJÍCÍ ČAS';

  @override
  String get years => 'ROK';

  @override
  String get days => 'DEN';

  @override
  String get hours => 'HODINA';

  @override
  String get minutes => 'MINUTA';

  @override
  String get seconds => 'DRUHÝ';

  @override
  String get importantEvents => 'Důležitý vývoj';

  @override
  String get importantEvent => 'důležitý vývoj';

  @override
  String get noEvents => 'K výraznému rozvoji zatím nedochází.';

  @override
  String get lockedResultWarning =>
      'Tento výsledek nelze přepočítat. Stejný záznam se použije, i když je aplikace smazána.';

  @override
  String get language => 'Jazyk';

  @override
  String get disclaimerTitle => 'Varování';

  @override
  String get disclaimerText =>
      'Tato aplikace je určena pouze pro zábavní účely. Neposkytuje pravdivou předpověď zdraví, data úmrtí, očekávané délky života nebo budoucnosti.';

  @override
  String get footerWarning =>
      'Je to pro účely zábavy. Není to předpověď skutečného zdraví nebo přežití.';

  @override
  String get ok => 'Dobře';

  @override
  String get eventPositiveTitle => 'Ve vašem životě došlo k důležitému vývoji';

  @override
  String get eventPositiveDescription =>
      'Podle systému byl zpracován pozitivní vliv na vaši životnost.';

  @override
  String get eventNegativeTitle => 'Ve vašem životě došlo k důležitému vývoji';

  @override
  String get eventNegativeDescription =>
      'Podle systému byl spáchán negativní dopad na vaši životnost.';

  @override
  String get aboutTitle => 'O';

  @override
  String get aboutHeader => 'SYSTEM COUNTDOWN // POSLEDNÍ SOUBOR';

  @override
  String get aboutText1 =>
      'Tato aplikace je určena pouze pro zábavní účely. Neposkytuje přesné informace o skutečné délce života, datu úmrtí, zdravotním stavu nebo budoucnosti.';

  @override
  String get aboutText2 =>
      'Výsledky jsou počítány fiktivně a náhodně. Nejedná se o lékařské, psychologické, právní ani finanční poradenství.';

  @override
  String get aboutText3 =>
      'Pokud vás obsah obtěžuje, přestaňte aplikaci používat.';

  @override
  String get shareTitle => 'Sdílet obrazovku';

  @override
  String get shareImage => 'Sdílet snímek obrazovky počítadla';

  @override
  String get shareText => 'Sdílejte aplikaci jako odkaz';

  @override
  String get shareDefaultText => 'Viděl jsem svůj počítadlo smrti. Vidíš taky.';

  @override
  String get menuAbout => 'O';

  @override
  String get menuEvents => 'Proměny osudu';

  @override
  String get menuShare => 'Sdílet obrazovku';

  @override
  String get menuLanguage => 'Změnit jazyk';

  @override
  String get recalculateTitle => 'Důležitý vývoj';

  @override
  String get recalculateDesc =>
      'V jeho osudu se objevilo nové znamení. Zbývající čas je nutné přepočítat.';

  @override
  String get recalculateButton => 'ZNOVU POČÍTAJTE';

  @override
  String get noEventYet => 'Zatím žádná změna osudu.';

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
