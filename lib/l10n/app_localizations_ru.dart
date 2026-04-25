// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class AppLocalizationsRu extends AppLocalizations {
  AppLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get appTitle => 'Обратный отсчет: счетчик смерти';

  @override
  String get appTitleShort => 'Счетчик смерти';

  @override
  String get notificationPermissionTitle => 'Разрешить уведомления';

  @override
  String get notificationPermissionText =>
      'Хотели бы вы получать уведомления о важных событиях в вашей жизни, изменениях в судьбе и времени?';

  @override
  String get notificationPermissionYes => 'Да';

  @override
  String get notificationPermissionNo => 'Нет';

  @override
  String get loading => 'Загрузка...';

  @override
  String get startSubtitle =>
      'Вы можете рассчитать приблизительный счетчик жизни только один раз.';

  @override
  String get calculateButton => 'РАССЧИТАТЬ';

  @override
  String get oneTimeWarning =>
      'Результат создается один раз и надежно сохраняется.';

  @override
  String get calculatingTitle => 'Расчет';

  @override
  String get estimatedTime => 'Примерное время расчета: 12 минут.';

  @override
  String get fastCalculateButton =>
      'Быстро посчитайте, посмотрев короткое видео';

  @override
  String get loadingAd => 'Видео готовится...';

  @override
  String get rewardedAdInfo =>
      'Просмотр видео позволяет пропустить время вычислений.';

  @override
  String get adNotReady =>
      'Видео еще не готово. Пожалуйста, попробуйте еще раз.';

  @override
  String get resultTitle => 'ОСТАТОЧНОЕ ВРЕМЯ';

  @override
  String get years => 'ГОД';

  @override
  String get days => 'ДЕНЬ';

  @override
  String get hours => 'ЧАС';

  @override
  String get minutes => 'МИНУТА';

  @override
  String get seconds => 'ВТОРОЙ';

  @override
  String get importantEvents => 'Важные события';

  @override
  String get importantEvent => 'важное событие';

  @override
  String get noEvents => 'Значительного развития пока нет.';

  @override
  String get lockedResultWarning =>
      'Этот результат не может быть пересчитан. Эта же запись используется даже в случае удаления приложения.';

  @override
  String get language => 'Язык';

  @override
  String get disclaimerTitle => 'Предупреждение';

  @override
  String get disclaimerText =>
      'Это приложение предназначено только для развлекательных целей. Он не дает достоверных предсказаний о состоянии здоровья, дате смерти, ожидаемой продолжительности жизни или будущем.';

  @override
  String get footerWarning =>
      'Это в развлекательных целях. Это не прогноз фактического здоровья или выживания.';

  @override
  String get ok => 'Хорошо';

  @override
  String get eventPositiveTitle => 'В вашей жизни произошло важное событие';

  @override
  String get eventPositiveDescription =>
      'По системе было обработано положительное влияние на продолжительность вашей жизни.';

  @override
  String get eventNegativeTitle => 'В вашей жизни произошло важное событие';

  @override
  String get eventNegativeDescription =>
      'По мнению системы, совершено негативное влияние на продолжительность вашей жизни.';

  @override
  String get aboutTitle => 'О';

  @override
  String get aboutHeader => 'СИСТЕМА ОБРАТНОГО ОТСЧЕТА // ПОСЛЕДНИЙ ФАЙЛ';

  @override
  String get aboutText1 =>
      'Это приложение предназначено только для развлекательных целей. Он не предоставляет точной информации о фактической продолжительности жизни, дате смерти, состоянии здоровья или будущем.';

  @override
  String get aboutText2 =>
      'Результаты рассчитываются фиктивно и случайным образом. Это не медицинская, психологическая, юридическая или финансовая консультация.';

  @override
  String get aboutText3 =>
      'Если контент вас беспокоит, прекратите использование приложения.';

  @override
  String get shareTitle => 'Поделиться экраном';

  @override
  String get shareImage => 'Поделиться скриншотом счетчика';

  @override
  String get shareText => 'Поделитесь приложением как ссылкой';

  @override
  String get shareDefaultText =>
      'Я увидел свой счетчик смертей. Вы тоже видите.';

  @override
  String get menuAbout => 'О';

  @override
  String get menuEvents => 'Изменения судьбы';

  @override
  String get menuShare => 'Поделиться экраном';

  @override
  String get menuLanguage => 'Изменить язык';

  @override
  String get recalculateTitle => 'Важные события';

  @override
  String get recalculateDesc =>
      'В его судьбе появилась новая отметка. Оставшееся время необходимо пересчитать.';

  @override
  String get recalculateButton => 'РАССЧИТАЙТЕ ЕЩЕ РАЗ';

  @override
  String get noEventYet => 'Судьба пока не изменилась.';
}
