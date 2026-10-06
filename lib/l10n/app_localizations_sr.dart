// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Serbian (`sr`).
class AppLocalizationsSr extends AppLocalizations {
  AppLocalizationsSr([String locale = 'sr']) : super(locale);

  @override
  String get appTitle => 'Одбројавање: бројач смрти';

  @override
  String get appTitleShort => 'Деатх Цоунтер';

  @override
  String get notificationPermissionTitle => 'Дозволи обавештења';

  @override
  String get notificationPermissionText =>
      'Да ли бисте желели да примате обавештења о важним догађајима у вашем животу, променама у судбини и времену?';

  @override
  String get notificationPermissionYes => 'Да';

  @override
  String get notificationPermissionNo => 'бр';

  @override
  String get loading => 'Учитавање...';

  @override
  String get startSubtitle =>
      'Процењени мерач животног века можете израчунати само једном.';

  @override
  String get calculateButton => 'ИЗРАЧУНАЈТЕ';

  @override
  String get oneTimeWarning => 'Резултат се креира једном и безбедно чува.';

  @override
  String get calculatingTitle => 'Рачунање';

  @override
  String get estimatedTime => 'Може потрајати дуже него што се процењује';

  @override
  String get fastCalculateButton => 'Брзо израчунајте гледањем кратког видеа';

  @override
  String get loadingAd => 'Видео је у припреми...';

  @override
  String get rewardedAdInfo =>
      'Гледање видео записа вам омогућава да прескочите време израчунавања.';

  @override
  String get adNotReady => 'Видео још није спреман. Покушајте поново.';

  @override
  String get resultTitle => 'ПРЕОСТАЛО ВРЕМЕ';

  @override
  String get years => 'ГОДИНА';

  @override
  String get days => 'ДАН';

  @override
  String get months => 'МОНТХ';

  @override
  String get hours => 'ХОУР';

  @override
  String get minutes => 'МИНУТЕ';

  @override
  String get seconds => 'ДРУГО';

  @override
  String get importantEvents => 'Важна дешавања';

  @override
  String get importantEvent => 'важан развој';

  @override
  String get noEvents => 'Још нема значајнијег развоја.';

  @override
  String get lockedResultWarning =>
      'Овај резултат се не може поново израчунати. Исти запис се користи чак и ако се апликација обрише.';

  @override
  String get language => 'Језик';

  @override
  String get disclaimerTitle => 'Упозорење';

  @override
  String get disclaimerText =>
      'Ова апликација је само у забавне сврхе. Не пружа истинито предвиђање здравља, датума смрти, очекиваног животног века или будућности.';

  @override
  String get footerWarning =>
      'То је у сврху забаве. То није предвиђање стварног здравља или преживљавања.';

  @override
  String get ok => 'Ок';

  @override
  String get eventPositiveTitle => 'Дошло је до важног развоја у вашем животу';

  @override
  String get eventPositiveDescription =>
      'Према систему, позитиван ефекат је обрађен на ваш животни век.';

  @override
  String get eventNegativeTitle => 'Дошло је до важног развоја у вашем животу';

  @override
  String get eventNegativeDescription =>
      'Према систему, почињен је негативан утицај на ваш животни век.';

  @override
  String get aboutTitle => 'Абоут';

  @override
  String get aboutHeader => 'СИСТЕМ ОДБРОЈАВАЊА // ПОСЛЕДЊА ДАТОТЕКА';

  @override
  String get aboutText1 =>
      'Ова апликација је само у забавне сврхе. Не пружа тачне информације о стварном очекиваном животном веку, датуму смрти, здравственом стању или будућности.';

  @override
  String get aboutText2 =>
      'Резултати се израчунавају фиктивно и насумично. То није медицински, психолошки, правни или финансијски савет.';

  @override
  String get aboutText3 =>
      'Ако вам садржај смета, престаните да користите апликацију.';

  @override
  String get shareTitle => 'Дели екран';

  @override
  String get shareImage => 'Дели снимак екрана бројача';

  @override
  String get shareText => 'Поделите апликацију као везу';

  @override
  String get shareDefaultText => 'Видео сам свој бројач смрти. Видиш и ти.';

  @override
  String get menuAbout => 'Абоут';

  @override
  String get menuEvents => 'Промене судбине';

  @override
  String get menuShare => 'Дели екран';

  @override
  String get menuLanguage => 'Промени језик';

  @override
  String get recalculateTitle => 'Важна дешавања';

  @override
  String get recalculateDesc =>
      'У његовој судбини појавио се нови знак. Преостало време се мора поново израчунати.';

  @override
  String get recalculateButton => 'ИЗРАЧУНАЈ ПОНОВО';

  @override
  String get noEventYet => 'Још нема промене судбине.';

  @override
  String get surveyTitle => 'АНАЛИЗА РИЗИКА И ОПСТАНКА';

  @override
  String surveyStepText(Object step) {
    return 'АНАЛИЗА КСПЛАЦЕХОЛДЕРКС / 4';
  }

  @override
  String get surveyNextButton => 'НАСТАВИ';

  @override
  String get surveyCalculateButton => 'ИЗРАЧУНАЈ СУДБИНУ';

  @override
  String get surveyQ1Title => 'СЛЕЕП ПАТЕРН';

  @override
  String get surveyQ1Desc => 'Колико сати у просеку спавате дневно?';

  @override
  String surveyQ1Unit(Object hours) {
    return 'КСПЛАЦЕХОЛДЕРКС САТ';
  }

  @override
  String get surveyQ2Title => 'ШТЕТНЕ НАВИКЕ';

  @override
  String get surveyQ2Desc =>
      'Да ли редовно конзумирате дуван, алкохол или тешки кофеин?';

  @override
  String get surveyQ2OptionYes => 'ДА';

  @override
  String get surveyQ2OptionNo => 'НО';

  @override
  String get surveyQ3Title => 'СТРЕС И АНксиозност';

  @override
  String get surveyQ3Desc => 'Оцените свој дневни ниво стреса (1 - 10):';

  @override
  String surveyQ3Unit(Object level) {
    return 'ЛЕВЕЛ КСПЛАЦЕХОЛДЕРКС';
  }

  @override
  String get surveyQ4Title => 'ФИЗИЧКА АКТИВНОСТ';

  @override
  String get surveyQ4Desc => 'Колико дана у недељи вежбате?';

  @override
  String surveyQ4Unit(Object days) {
    return 'КСПЛАЦЕХОЛДЕРКС ДАИС';
  }
}
