// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Bulgarian (`bg`).
class AppLocalizationsBg extends AppLocalizations {
  AppLocalizationsBg([String locale = 'bg']) : super(locale);

  @override
  String get appTitle => 'Обратно броене: Брояч на смъртта';

  @override
  String get appTitleShort => 'Брояч на смъртта';

  @override
  String get notificationPermissionTitle => 'Разрешаване на известия';

  @override
  String get notificationPermissionText =>
      'Искате ли да получавате известия за важни събития в живота ви, промени в съдбата и времето?';

  @override
  String get notificationPermissionYes => 'да';

  @override
  String get notificationPermissionNo => 'не';

  @override
  String get loading => 'Зареждане...';

  @override
  String get startSubtitle =>
      'Можете да изчислите очаквания си метър на живот само веднъж.';

  @override
  String get calculateButton => 'ИЗЧИСЛЕТЕ';

  @override
  String get oneTimeWarning =>
      'Резултатът се създава веднъж и се запазва сигурно.';

  @override
  String get calculatingTitle => 'Изчисляване';

  @override
  String get estimatedTime => 'Приблизително време за изчисление: 12 минути';

  @override
  String get fastCalculateButton =>
      'Изчислете бързо, като гледате кратко видео';

  @override
  String get loadingAd => 'Подготвя се видео...';

  @override
  String get rewardedAdInfo =>
      'Гледането на видеоклипове ви позволява да пропуснете времето за изчисление.';

  @override
  String get adNotReady =>
      'Видеото все още не е готово. Моля, опитайте отново.';

  @override
  String get resultTitle => 'ОСТАВАЩО ВРЕМЕ';

  @override
  String get years => 'ГОДИНА';

  @override
  String get days => 'ДЕН';

  @override
  String get hours => 'ЧАС';

  @override
  String get minutes => 'МИНУТА';

  @override
  String get seconds => 'ВТОРО';

  @override
  String get importantEvents => 'Важни развития';

  @override
  String get importantEvent => 'важно развитие';

  @override
  String get noEvents => 'Все още няма значително развитие.';

  @override
  String get lockedResultWarning =>
      'Този резултат не може да бъде преизчислен. Същият запис се използва дори ако приложението е изтрито.';

  @override
  String get language => 'език';

  @override
  String get disclaimerTitle => 'Предупреждение';

  @override
  String get disclaimerText =>
      'Това приложение е само за развлекателни цели. Той не предоставя истинска прогноза за здравето, датата на смъртта, очакваната продължителност на живота или бъдещето.';

  @override
  String get footerWarning =>
      'Това е за развлекателни цели. Това не е прогноза за действително здраве или оцеляване.';

  @override
  String get ok => 'добре';

  @override
  String get eventPositiveTitle => 'Има важно развитие в живота ви';

  @override
  String get eventPositiveDescription =>
      'Според системата е обработен положителен ефект върху продължителността на живота ви.';

  @override
  String get eventNegativeTitle => 'Има важно развитие в живота ви';

  @override
  String get eventNegativeDescription =>
      'Според системата е извършено отрицателно въздействие върху продължителността на живота ви.';

  @override
  String get aboutTitle => 'За';

  @override
  String get aboutHeader => 'СИСТЕМА ЗА ОБРАТНО БРОЕНЕ // ПОСЛЕДЕН ФАЙЛ';

  @override
  String get aboutText1 =>
      'Това приложение е само за развлекателни цели. Той не предоставя точна информация за действителната продължителност на живота, датата на смъртта, здравословното състояние или бъдещето.';

  @override
  String get aboutText2 =>
      'Резултатите се изчисляват фиктивно и на случаен принцип. Това не е медицински, психологически, правен или финансов съвет.';

  @override
  String get aboutText3 =>
      'Ако съдържанието ви притеснява, спрете да използвате приложението.';

  @override
  String get shareTitle => 'Споделяне на екрана';

  @override
  String get shareImage => 'Екранна снимка за брояч на споделяния';

  @override
  String get shareText => 'Споделете приложението като връзка';

  @override
  String get shareDefaultText => 'Видях своя брояч на смъртта. Виждате също.';

  @override
  String get menuAbout => 'За';

  @override
  String get menuEvents => 'Промени в съдбата';

  @override
  String get menuShare => 'Споделяне на екрана';

  @override
  String get menuLanguage => 'Промяна на езика';

  @override
  String get recalculateTitle => 'Важни развития';

  @override
  String get recalculateDesc =>
      'В съдбата му се появи нов белег. Оставащото време трябва да се преизчисли.';

  @override
  String get recalculateButton => 'ИЗЧИСЛЕТЕ ОТНОВО';

  @override
  String get noEventYet => 'Все още няма промяна в съдбата.';
}
