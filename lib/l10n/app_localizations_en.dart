// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'Countdown: Death Counter';

  @override
  String get appTitleShort => 'Death Counter';

  @override
  String get notificationPermissionTitle => 'Allow notifications';

  @override
  String get notificationPermissionText =>
      'Would you like to receive notifications about important events in your life, changes in fate and time?';

  @override
  String get notificationPermissionYes => 'Yes';

  @override
  String get notificationPermissionNo => 'No';

  @override
  String get loading => 'Loading...';

  @override
  String get startSubtitle =>
      'You can only calculate your estimated life meter once.';

  @override
  String get calculateButton => 'CALCULATE';

  @override
  String get oneTimeWarning => 'The result is created once and saved securely.';

  @override
  String get calculatingTitle => 'Calculating';

  @override
  String get estimatedTime => 'Estimated calculation time: 12 minutes';

  @override
  String get fastCalculateButton =>
      'Calculate quickly by watching a short video';

  @override
  String get loadingAd => 'Video is being prepared...';

  @override
  String get rewardedAdInfo =>
      'Watching videos allows you to skip calculation time.';

  @override
  String get adNotReady => 'The video is not ready yet. Please try again.';

  @override
  String get resultTitle => 'REMAINING TIME';

  @override
  String get years => 'YEAR';

  @override
  String get days => 'DAY';

  @override
  String get hours => 'HOUR';

  @override
  String get minutes => 'MINUTE';

  @override
  String get seconds => 'SECOND';

  @override
  String get importantEvents => 'Important Developments';

  @override
  String get importantEvent => 'important development';

  @override
  String get noEvents => 'There is no significant development yet.';

  @override
  String get lockedResultWarning =>
      'This result cannot be recalculated. The same record is used even if the application is deleted.';

  @override
  String get language => 'Language';

  @override
  String get disclaimerTitle => 'Warning';

  @override
  String get disclaimerText =>
      'This app is for entertainment purposes only. It does not provide a true prediction of health, date of death, life expectancy, or the future.';

  @override
  String get footerWarning =>
      'It is for entertainment purposes. It is not a prediction of actual health or survival.';

  @override
  String get ok => 'Ok';

  @override
  String get eventPositiveTitle =>
      'There has been an important development in your life';

  @override
  String get eventPositiveDescription =>
      'According to the system, a positive effect has been processed on your lifespan.';

  @override
  String get eventNegativeTitle =>
      'There has been an important development in your life';

  @override
  String get eventNegativeDescription =>
      'According to the system, a negative impact on your lifespan has been committed.';

  @override
  String get aboutTitle => 'About';

  @override
  String get aboutHeader => 'COUNTDOWN SYSTEM // LAST FILE';

  @override
  String get aboutText1 =>
      'This app is for entertainment purposes only. It does not provide accurate information about actual life expectancy, date of death, health status or future.';

  @override
  String get aboutText2 =>
      'The results are calculated fictionally and randomly. It is not medical, psychological, legal or financial advice.';

  @override
  String get aboutText3 => 'If the content bothers you, stop using the app.';

  @override
  String get shareTitle => 'Share Screen';

  @override
  String get shareImage => 'Share Counter Screenshot';

  @override
  String get shareText => 'Share the Application as Link';

  @override
  String get shareDefaultText => 'I saw my death counter. You see too.';

  @override
  String get menuAbout => 'About';

  @override
  String get menuEvents => 'Changes of Destiny';

  @override
  String get menuShare => 'Share Screen';

  @override
  String get menuLanguage => 'Change Language';

  @override
  String get recalculateTitle => 'Important Developments';

  @override
  String get recalculateDesc =>
      'A new mark appeared in his destiny. The remaining time must be recalculated.';

  @override
  String get recalculateButton => 'CALCULATE AGAIN';

  @override
  String get noEventYet => 'No change of fate yet.';
}
