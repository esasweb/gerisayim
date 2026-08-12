// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Catalan Valencian (`ca`).
class AppLocalizationsCa extends AppLocalizations {
  AppLocalizationsCa([String locale = 'ca']) : super(locale);

  @override
  String get appTitle => 'Compte enrere: comptador de morts';

  @override
  String get appTitleShort => 'Comptador de morts';

  @override
  String get notificationPermissionTitle => 'Permet notificacions';

  @override
  String get notificationPermissionText =>
      'T\'agradaria rebre notificacions sobre esdeveniments importants de la teva vida, canvis en el destí i el temps?';

  @override
  String get notificationPermissionYes => 'Sí';

  @override
  String get notificationPermissionNo => 'No';

  @override
  String get loading => 'Carregant...';

  @override
  String get startSubtitle =>
      'Només podeu calcular el vostre comptador de vida estimat una vegada.';

  @override
  String get calculateButton => 'CALCULAR';

  @override
  String get oneTimeWarning =>
      'El resultat es crea una vegada i es guarda de manera segura.';

  @override
  String get calculatingTitle => 'Calculant';

  @override
  String get estimatedTime => 'Temps de càlcul estimat: 12 minuts';

  @override
  String get fastCalculateButton => 'Calcula ràpidament mirant un vídeo breu';

  @override
  String get loadingAd => 'S\'està preparant el vídeo...';

  @override
  String get rewardedAdInfo =>
      'Veure vídeos us permet saltar el temps de càlcul.';

  @override
  String get adNotReady =>
      'El vídeo encara no està llest. Si us plau, torna-ho a provar.';

  @override
  String get resultTitle => 'TEMPS QUE RESTAN';

  @override
  String get years => 'ANY';

  @override
  String get days => 'DIA';

  @override
  String get hours => 'HORA';

  @override
  String get minutes => 'MINUT';

  @override
  String get seconds => 'SEGON';

  @override
  String get importantEvents => 'Evolucions importants';

  @override
  String get importantEvent => 'desenvolupament important';

  @override
  String get noEvents => 'Encara no hi ha cap evolució significativa.';

  @override
  String get lockedResultWarning =>
      'Aquest resultat no es pot tornar a calcular. S\'utilitza el mateix registre encara que s\'elimini l\'aplicació.';

  @override
  String get language => 'Llengua';

  @override
  String get disclaimerTitle => 'Avís';

  @override
  String get disclaimerText =>
      'Aquesta aplicació només té finalitats d\'entreteniment. No proporciona una predicció real de la salut, la data de la mort, l\'esperança de vida o el futur.';

  @override
  String get footerWarning =>
      'És amb finalitats d\'entreteniment. No és una predicció de salut o supervivència real.';

  @override
  String get ok => 'D\'acord';

  @override
  String get eventPositiveTitle =>
      'Hi ha hagut un desenvolupament important a la teva vida';

  @override
  String get eventPositiveDescription =>
      'Segons el sistema, s\'ha processat un efecte positiu en la seva vida útil.';

  @override
  String get eventNegativeTitle =>
      'Hi ha hagut un desenvolupament important a la teva vida';

  @override
  String get eventNegativeDescription =>
      'Segons el sistema, s\'ha comès un impacte negatiu en la seva vida útil.';

  @override
  String get aboutTitle => 'Sobre';

  @override
  String get aboutHeader => 'SISTEMA DE COMPTE ENRERE // ÚLTIM FITXER';

  @override
  String get aboutText1 =>
      'Aquesta aplicació només té finalitats d\'entreteniment. No proporciona informació precisa sobre l\'esperança de vida real, la data de la mort, l\'estat de salut o el futur.';

  @override
  String get aboutText2 =>
      'Els resultats es calculen de manera fictícia i aleatòria. No és assessorament mèdic, psicològic, legal o financer.';

  @override
  String get aboutText3 =>
      'Si el contingut et molesta, deixa d\'utilitzar l\'aplicació.';

  @override
  String get shareTitle => 'Comparteix pantalla';

  @override
  String get shareImage => 'Comparteix la captura de pantalla del comptador';

  @override
  String get shareText => 'Comparteix l\'aplicació com a enllaç';

  @override
  String get shareDefaultText =>
      'Vaig veure el meu comptador de morts. Tu també ho veus.';

  @override
  String get menuAbout => 'Sobre';

  @override
  String get menuEvents => 'Canvis de destí';

  @override
  String get menuShare => 'Comparteix pantalla';

  @override
  String get menuLanguage => 'Canvia l\'idioma';

  @override
  String get recalculateTitle => 'Evolucions importants';

  @override
  String get recalculateDesc =>
      'Una nova marca va aparèixer en el seu destí. El temps restant s\'ha de recalcular.';

  @override
  String get recalculateButton => 'TORNAR A CALCULAR';

  @override
  String get noEventYet => 'Encara no hi ha canvis de destí.';

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
