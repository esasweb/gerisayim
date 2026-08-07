// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get appTitle => 'Geri Sayım: Ölüm Sayacı';

  @override
  String get appTitleShort => 'Contador de muertes';

  @override
  String get notificationPermissionTitle => 'Permitir notificaciones';

  @override
  String get notificationPermissionText =>
      '¿Le gustaría recibir notificaciones sobre eventos importantes en su vida, cambios en el destino y el tiempo?';

  @override
  String get notificationPermissionYes => 'Sí';

  @override
  String get notificationPermissionNo => 'No';

  @override
  String get loading => 'Cargando...';

  @override
  String get startSubtitle =>
      'Sólo puedes calcular tu medidor de vida estimado una vez.';

  @override
  String get calculateButton => 'CALCULAR';

  @override
  String get oneTimeWarning =>
      'El resultado se crea una vez y se guarda de forma segura.';

  @override
  String get calculatingTitle => 'Calculador';

  @override
  String get estimatedTime => 'Tiempo estimado de cálculo: 12 minutos';

  @override
  String get fastCalculateButton => 'Calcula rápidamente viendo un vídeo corto';

  @override
  String get loadingAd => 'Se está preparando el vídeo...';

  @override
  String get rewardedAdInfo =>
      'Ver videos le permite omitir el tiempo de cálculo.';

  @override
  String get adNotReady =>
      'El vídeo aún no está listo. Por favor inténtalo de nuevo.';

  @override
  String get resultTitle => 'TIEMPO RESTANTE';

  @override
  String get years => 'AÑO';

  @override
  String get days => 'DÍA';

  @override
  String get hours => 'HORA';

  @override
  String get minutes => 'MINUTO';

  @override
  String get seconds => 'SEGUNDO';

  @override
  String get importantEvents => 'Desarrollos importantes';

  @override
  String get importantEvent => 'desarrollo importante';

  @override
  String get noEvents => 'No hay ningún desarrollo significativo todavía.';

  @override
  String get lockedResultWarning =>
      'Este resultado no se puede recalcular. Se utiliza el mismo registro incluso si se elimina la aplicación.';

  @override
  String get language => 'Idioma';

  @override
  String get disclaimerTitle => 'Advertencia';

  @override
  String get disclaimerText =>
      'Esta aplicación es sólo para fines de entretenimiento. No proporciona una predicción real de la salud, la fecha de muerte, la esperanza de vida o el futuro.';

  @override
  String get footerWarning =>
      'Es para fines de entretenimiento. No es una predicción de la salud o la supervivencia reales.';

  @override
  String get ok => 'De acuerdo';

  @override
  String get eventPositiveTitle =>
      'Ha habido un desarrollo importante en tu vida.';

  @override
  String get eventPositiveDescription =>
      'Según el sistema, se ha procesado un efecto positivo en su esperanza de vida.';

  @override
  String get eventNegativeTitle =>
      'Ha habido un desarrollo importante en tu vida.';

  @override
  String get eventNegativeDescription =>
      'Según el sistema, se ha cometido un impacto negativo en su esperanza de vida.';

  @override
  String get aboutTitle => 'Acerca de';

  @override
  String get aboutHeader => 'SISTEMA DE CUENTA ATRÁS // ÚLTIMO ARCHIVO';

  @override
  String get aboutText1 =>
      'Esta aplicación es sólo para fines de entretenimiento. No proporciona información precisa sobre la esperanza de vida real, fecha de muerte, estado de salud o futuro.';

  @override
  String get aboutText2 =>
      'Los resultados se calculan de forma ficticia y aleatoria. No es un asesoramiento médico, psicológico, legal o financiero.';

  @override
  String get aboutText3 =>
      'Si el contenido te molesta, deja de usar la aplicación.';

  @override
  String get shareTitle => 'Compartir pantalla';

  @override
  String get shareImage => 'Compartir captura de pantalla del contador';

  @override
  String get shareText => 'Compartir la aplicación como enlace';

  @override
  String get shareDefaultText => 'Vi mi contador de muertes. Tú también ves.';

  @override
  String get menuAbout => 'Acerca de';

  @override
  String get menuEvents => 'Cambios de destino';

  @override
  String get menuShare => 'Compartir pantalla';

  @override
  String get menuLanguage => 'Cambiar idioma';

  @override
  String get recalculateTitle => 'Desarrollos importantes';

  @override
  String get recalculateDesc =>
      'Una nueva marca apareció en su destino. Se debe volver a calcular el tiempo restante.';

  @override
  String get recalculateButton => 'CALCULAR DE NUEVO';

  @override
  String get noEventYet => 'Aún no hay cambios de destino.';

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
