// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Ukrainian (`uk`).
class AppLocalizationsUk extends AppLocalizations {
  AppLocalizationsUk([String locale = 'uk']) : super(locale);

  @override
  String get appTitle => 'Зворотний відлік: лічильник смерті';

  @override
  String get appTitleShort => 'Лічильник смерті';

  @override
  String get notificationPermissionTitle => 'Дозволити сповіщення';

  @override
  String get notificationPermissionText =>
      'Бажаєте отримувати сповіщення про важливі події у вашому житті, зміни в долі та часі?';

  @override
  String get notificationPermissionYes => 'так';

  @override
  String get notificationPermissionNo => 'немає';

  @override
  String get loading => 'Завантаження...';

  @override
  String get startSubtitle =>
      'Ви можете обчислити приблизний термін служби лише один раз.';

  @override
  String get calculateButton => 'ПОРАХУВАТИ';

  @override
  String get oneTimeWarning =>
      'Результат створюється один раз і надійно зберігається.';

  @override
  String get calculatingTitle => 'Розрахунок';

  @override
  String get estimatedTime => 'Орієнтовний час розрахунку: 12 хвилин';

  @override
  String get fastCalculateButton =>
      'Швидко порахуйте, подивившись коротке відео';

  @override
  String get loadingAd => 'Готується відео...';

  @override
  String get rewardedAdInfo =>
      'Перегляд відео дозволяє пропустити час розрахунку.';

  @override
  String get adNotReady => 'Відео ще не готове. Спробуйте ще раз.';

  @override
  String get resultTitle => 'ЧАС, ЩО ЗАЛИШИВСЯ';

  @override
  String get years => 'РІК';

  @override
  String get days => 'ДЕНЬ';

  @override
  String get hours => 'ГОДИНА';

  @override
  String get minutes => 'ХВИЛИНА';

  @override
  String get seconds => 'ПО-ДРУГЕ';

  @override
  String get importantEvents => 'Важливі події';

  @override
  String get importantEvent => 'важливий розвиток';

  @override
  String get noEvents => 'Значного розвитку поки що немає.';

  @override
  String get lockedResultWarning =>
      'Цей результат не можна перерахувати. Той самий запис використовується, навіть якщо програму видалено.';

  @override
  String get language => 'Мова';

  @override
  String get disclaimerTitle => 'УВАГА';

  @override
  String get disclaimerText =>
      'Ця програма призначена лише для розваг. Він не дає правдивого прогнозу здоров’я, дати смерті, очікуваної тривалості життя чи майбутнього.';

  @override
  String get footerWarning =>
      'Це для розважальних цілей. Це не прогноз реального здоров\'я чи виживання.';

  @override
  String get ok => 'добре';

  @override
  String get eventPositiveTitle => 'У вашому житті відбулася важлива подія';

  @override
  String get eventPositiveDescription =>
      'Відповідно до системи, оброблено позитивний вплив на вашу тривалість життя.';

  @override
  String get eventNegativeTitle => 'У вашому житті відбулася важлива подія';

  @override
  String get eventNegativeDescription =>
      'Відповідно до системи, було здійснено негативний вплив на тривалість вашого життя.';

  @override
  String get aboutTitle => 'про';

  @override
  String get aboutHeader => 'СИСТЕМА ЗВОРОТНОГО ВІДЛІКУ // ОСТАННІЙ ФАЙЛ';

  @override
  String get aboutText1 =>
      'Ця програма призначена лише для розваг. Він не надає точної інформації про фактичну очікувану тривалість життя, дату смерті, стан здоров\'я чи майбутнє.';

  @override
  String get aboutText2 =>
      'Результати обчислюються вигадано і випадково. Це не медична, психологічна, юридична чи фінансова консультація.';

  @override
  String get aboutText3 =>
      'Якщо вміст вас турбує, припиніть використання програми.';

  @override
  String get shareTitle => 'Поділитися екраном';

  @override
  String get shareImage => 'Скріншот лічильника обміну';

  @override
  String get shareText => 'Поділіться додатком як посиланням';

  @override
  String get shareDefaultText =>
      'Я побачив свій лічильник смерті. Ви також бачите.';

  @override
  String get menuAbout => 'про';

  @override
  String get menuEvents => 'Зміни долі';

  @override
  String get menuShare => 'Поділитися екраном';

  @override
  String get menuLanguage => 'Змінити мову';

  @override
  String get recalculateTitle => 'Важливі події';

  @override
  String get recalculateDesc =>
      'У його долі з\'явилася нова відмітка. Час, що залишився, необхідно перерахувати.';

  @override
  String get recalculateButton => 'ПОРАХУВАЙТЕ ЩЕ РІВ';

  @override
  String get noEventYet => 'Без змін долі.';
}
