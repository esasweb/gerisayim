// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Slovak (`sk`).
class AppLocalizationsSk extends AppLocalizations {
  AppLocalizationsSk([String locale = 'sk']) : super(locale);

  @override
  String get appTitle => 'Odpočítavanie: Počítadlo smrti';

  @override
  String get appTitleShort => 'Počítadlo smrti';

  @override
  String get notificationPermissionTitle => 'Povoliť upozornenia';

  @override
  String get notificationPermissionText =>
      'Chcete dostávať upozornenia na dôležité udalosti vo vašom živote, zmeny osudu a času?';

  @override
  String get notificationPermissionYes => 'áno';

  @override
  String get notificationPermissionNo => 'Nie';

  @override
  String get loading => 'Načítava sa...';

  @override
  String get startSubtitle =>
      'Odhadovaný merač životnosti môžete vypočítať iba raz.';

  @override
  String get calculateButton => 'VYPOČÍTAŤ';

  @override
  String get oneTimeWarning => 'Výsledok sa vytvorí raz a bezpečne uloží.';

  @override
  String get calculatingTitle => 'Výpočet';

  @override
  String get estimatedTime => 'Odhadovaný čas výpočtu: 12 minút';

  @override
  String get fastCalculateButton =>
      'Počítajte rýchlo sledovaním krátkeho videa';

  @override
  String get loadingAd => 'Video sa pripravuje...';

  @override
  String get rewardedAdInfo =>
      'Sledovanie videí vám umožňuje preskočiť čas výpočtu.';

  @override
  String get adNotReady => 'Video ešte nie je hotové. Skúste to znova.';

  @override
  String get resultTitle => 'ZOSTÁVAJÚCI ČAS';

  @override
  String get years => 'ROK';

  @override
  String get days => 'DAY';

  @override
  String get hours => 'HODINA';

  @override
  String get minutes => 'MINÚTA';

  @override
  String get seconds => 'DRUHÝ';

  @override
  String get importantEvents => 'Dôležitý vývoj';

  @override
  String get importantEvent => 'dôležitý vývoj';

  @override
  String get noEvents => 'Zatiaľ nedochádza k výraznému vývoju.';

  @override
  String get lockedResultWarning =>
      'Tento výsledok nie je možné prepočítať. Rovnaký záznam sa použije aj vtedy, keď je aplikácia vymazaná.';

  @override
  String get language => 'Jazyk';

  @override
  String get disclaimerTitle => 'POZOR';

  @override
  String get disclaimerText =>
      'Táto aplikácia slúži len na zábavné účely. Neposkytuje pravdivú predpoveď zdravia, dátumu úmrtia, očakávanej dĺžky života alebo budúcnosti.';

  @override
  String get footerWarning =>
      'Slúži na zábavné účely. Nie je to predpoveď skutočného zdravia alebo prežitia.';

  @override
  String get ok => 'Dobre';

  @override
  String get eventPositiveTitle => 'Vo vašom živote došlo k dôležitému vývoju';

  @override
  String get eventPositiveDescription =>
      'Podľa systému bol spracovaný pozitívny vplyv na vašu životnosť.';

  @override
  String get eventNegativeTitle => 'Vo vašom živote došlo k dôležitému vývoju';

  @override
  String get eventNegativeDescription =>
      'Podľa systému došlo k negatívnemu vplyvu na vašu životnosť.';

  @override
  String get aboutTitle => 'O';

  @override
  String get aboutHeader => 'SYSTÉM ODPOČÍTANIE // POSLEDNÝ SÚBOR';

  @override
  String get aboutText1 =>
      'Táto aplikácia slúži len na zábavné účely. Neposkytuje presné informácie o skutočnej dĺžke života, dátume úmrtia, zdravotnom stave alebo budúcnosti.';

  @override
  String get aboutText2 =>
      'Výsledky sú vypočítané fiktívne a náhodne. Nejde o lekárske, psychologické, právne ani finančné poradenstvo.';

  @override
  String get aboutText3 =>
      'Ak vás obsah obťažuje, prestaňte aplikáciu používať.';

  @override
  String get shareTitle => 'Zdieľať obrazovku';

  @override
  String get shareImage => 'Zdieľať snímku obrazovky počítadla';

  @override
  String get shareText => 'Zdieľajte aplikáciu ako odkaz';

  @override
  String get shareDefaultText => 'Videl som svoj počítadlo smrti. Vidíš aj ty.';

  @override
  String get menuAbout => 'O';

  @override
  String get menuEvents => 'Zmeny osudu';

  @override
  String get menuShare => 'Zdieľať obrazovku';

  @override
  String get menuLanguage => 'Zmeniť jazyk';

  @override
  String get recalculateTitle => 'Dôležitý vývoj';

  @override
  String get recalculateDesc =>
      'V jeho osude sa objavilo nové znamenie. Zostávajúci čas je potrebné prepočítať.';

  @override
  String get recalculateButton => 'ZNOVU POČÍTAJTE';

  @override
  String get noEventYet => 'Zatiaľ žiadna zmena osudu.';
}
