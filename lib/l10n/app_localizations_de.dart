// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for German (`de`).
class AppLocalizationsDe extends AppLocalizations {
  AppLocalizationsDe([String locale = 'de']) : super(locale);

  @override
  String get appTitle => 'Countdown: Todeszähler';

  @override
  String get appTitleShort => 'Todeszähler';

  @override
  String get notificationPermissionTitle => 'Benachrichtigungen zulassen';

  @override
  String get notificationPermissionText =>
      'Möchten Sie Benachrichtigungen über wichtige Ereignisse in Ihrem Leben, Schicksals- und Zeitänderungen erhalten?';

  @override
  String get notificationPermissionYes => 'Ja';

  @override
  String get notificationPermissionNo => 'NEIN';

  @override
  String get loading => 'Laden...';

  @override
  String get startSubtitle =>
      'Sie können Ihren geschätzten Lebenszähler nur einmal berechnen.';

  @override
  String get calculateButton => 'BERECHNEN';

  @override
  String get oneTimeWarning =>
      'Das Ergebnis wird einmalig erstellt und sicher gespeichert.';

  @override
  String get calculatingTitle => 'Berechnen';

  @override
  String get estimatedTime => 'Geschätzte Berechnungszeit: 12 Minuten';

  @override
  String get fastCalculateButton =>
      'Berechnen Sie schnell, indem Sie sich ein kurzes Video ansehen';

  @override
  String get loadingAd => 'Video ist in Vorbereitung...';

  @override
  String get rewardedAdInfo =>
      'Durch das Ansehen von Videos können Sie die Berechnungszeit überspringen.';

  @override
  String get adNotReady =>
      'Das Video ist noch nicht fertig. Bitte versuchen Sie es erneut.';

  @override
  String get resultTitle => 'VERBLEIBENDE ZEIT';

  @override
  String get years => 'JAHR';

  @override
  String get days => 'TAG';

  @override
  String get hours => 'STUNDE';

  @override
  String get minutes => 'MINUTE';

  @override
  String get seconds => 'ZWEITE';

  @override
  String get importantEvents => 'Wichtige Entwicklungen';

  @override
  String get importantEvent => 'wichtige Entwicklung';

  @override
  String get noEvents => 'Es gibt noch keine nennenswerte Entwicklung.';

  @override
  String get lockedResultWarning =>
      'Dieses Ergebnis kann nicht neu berechnet werden. Auch wenn die Anwendung gelöscht wird, wird derselbe Datensatz verwendet.';

  @override
  String get language => 'Sprache';

  @override
  String get disclaimerTitle => 'Warnung';

  @override
  String get disclaimerText =>
      'Diese App dient ausschließlich Unterhaltungszwecken. Es liefert keine echte Vorhersage über den Gesundheitszustand, das Sterbedatum, die Lebenserwartung oder die Zukunft.';

  @override
  String get footerWarning =>
      'Es dient Unterhaltungszwecken. Es handelt sich nicht um eine Vorhersage der tatsächlichen Gesundheit oder des Überlebens.';

  @override
  String get ok => 'OK';

  @override
  String get eventPositiveTitle =>
      'Es hat eine wichtige Entwicklung in Ihrem Leben stattgefunden';

  @override
  String get eventPositiveDescription =>
      'Dem System zufolge wurde ein positiver Effekt auf Ihre Lebensdauer verarbeitet.';

  @override
  String get eventNegativeTitle =>
      'Es hat eine wichtige Entwicklung in Ihrem Leben stattgefunden';

  @override
  String get eventNegativeDescription =>
      'Dem System zufolge wurde eine negative Auswirkung auf Ihre Lebensdauer begangen.';

  @override
  String get aboutTitle => 'Um';

  @override
  String get aboutHeader => 'COUNTDOWN-SYSTEM // LETZTE DATEI';

  @override
  String get aboutText1 =>
      'Diese App dient ausschließlich Unterhaltungszwecken. Es liefert keine genauen Informationen über die tatsächliche Lebenserwartung, das Sterbedatum, den Gesundheitszustand oder die Zukunft.';

  @override
  String get aboutText2 =>
      'Die Ergebnisse werden fiktiv und zufällig berechnet. Es handelt sich nicht um medizinische, psychologische, rechtliche oder finanzielle Beratung.';

  @override
  String get aboutText3 =>
      'Wenn Sie der Inhalt stört, beenden Sie die Nutzung der App.';

  @override
  String get shareTitle => 'Bildschirm teilen';

  @override
  String get shareImage => 'Zähler-Screenshot teilen';

  @override
  String get shareText => 'Teilen Sie die Anwendung als Link';

  @override
  String get shareDefaultText =>
      'Ich habe meinen Todeszähler gesehen. Du siehst es auch.';

  @override
  String get menuAbout => 'Um';

  @override
  String get menuEvents => 'Schicksalswechsel';

  @override
  String get menuShare => 'Bildschirm teilen';

  @override
  String get menuLanguage => 'Sprache ändern';

  @override
  String get recalculateTitle => 'Wichtige Entwicklungen';

  @override
  String get recalculateDesc =>
      'Ein neues Zeichen erschien in seinem Schicksal. Die verbleibende Zeit muss neu berechnet werden.';

  @override
  String get recalculateButton => 'RECHNEN SIE NOCHMAL';

  @override
  String get noEventYet => 'Noch keine Schicksalsänderung.';
}
