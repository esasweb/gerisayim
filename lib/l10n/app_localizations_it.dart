// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Italian (`it`).
class AppLocalizationsIt extends AppLocalizations {
  AppLocalizationsIt([String locale = 'it']) : super(locale);

  @override
  String get appTitle => 'Conto alla rovescia: contatore della morte';

  @override
  String get appTitleShort => 'Contatore della morte';

  @override
  String get notificationPermissionTitle => 'Consenti notifiche';

  @override
  String get notificationPermissionText =>
      'Desideri ricevere notifiche su eventi importanti della tua vita, cambiamenti nel destino e nel tempo?';

  @override
  String get notificationPermissionYes => 'SÌ';

  @override
  String get notificationPermissionNo => 'NO';

  @override
  String get loading => 'Caricamento...';

  @override
  String get startSubtitle =>
      'Puoi calcolare il tuo misuratore di vita stimato solo una volta.';

  @override
  String get calculateButton => 'CALCOLARE';

  @override
  String get oneTimeWarning =>
      'Il risultato viene creato una volta e salvato in modo sicuro.';

  @override
  String get calculatingTitle => 'Calcolo';

  @override
  String get estimatedTime => 'Tempo di calcolo stimato: 12 minuti';

  @override
  String get fastCalculateButton =>
      'Calcola rapidamente guardando un breve video';

  @override
  String get loadingAd => 'Il video è in preparazione...';

  @override
  String get rewardedAdInfo =>
      'Guardare i video ti consente di saltare il tempo di calcolo.';

  @override
  String get adNotReady => 'Il video non è ancora pronto. Per favore riprova.';

  @override
  String get resultTitle => 'TEMPO RIMANENTE';

  @override
  String get years => 'ANNO';

  @override
  String get days => 'GIORNO';

  @override
  String get hours => 'ORA';

  @override
  String get minutes => 'MINUTO';

  @override
  String get seconds => 'SECONDO';

  @override
  String get importantEvents => 'Sviluppi importanti';

  @override
  String get importantEvent => 'sviluppo importante';

  @override
  String get noEvents => 'Non c’è ancora uno sviluppo significativo.';

  @override
  String get lockedResultWarning =>
      'Questo risultato non può essere ricalcolato. Lo stesso record viene utilizzato anche se l\'applicazione viene eliminata.';

  @override
  String get language => 'Lingua';

  @override
  String get disclaimerTitle => 'Avvertimento';

  @override
  String get disclaimerText =>
      'Questa app è solo a scopo di intrattenimento. Non fornisce una previsione vera della salute, della data di morte, dell’aspettativa di vita o del futuro.';

  @override
  String get footerWarning =>
      'È per scopi di intrattenimento. Non è una previsione della salute effettiva o della sopravvivenza.';

  @override
  String get ok => 'OK';

  @override
  String get eventPositiveTitle =>
      'C\'è stato uno sviluppo importante nella tua vita';

  @override
  String get eventPositiveDescription =>
      'Secondo il sistema è stato elaborato un effetto positivo sulla vostra durata di vita.';

  @override
  String get eventNegativeTitle =>
      'C\'è stato uno sviluppo importante nella tua vita';

  @override
  String get eventNegativeDescription =>
      'Secondo il sistema, è stato commesso un impatto negativo sulla tua durata di vita.';

  @override
  String get aboutTitle => 'Di';

  @override
  String get aboutHeader => 'SISTEMA DI CONTO ALLA ROVESCIA // ULTIMO FILE';

  @override
  String get aboutText1 =>
      'Questa app è solo a scopo di intrattenimento. Non fornisce informazioni precise sull’aspettativa di vita effettiva, sulla data di morte, sullo stato di salute o sul futuro.';

  @override
  String get aboutText2 =>
      'I risultati sono calcolati in modo immaginario e casuale. Non si tratta di consulenza medica, psicologica, legale o finanziaria.';

  @override
  String get aboutText3 =>
      'Se il contenuto ti dà fastidio, smetti di usare l\'app.';

  @override
  String get shareTitle => 'Condividi schermo';

  @override
  String get shareImage => 'Condividi schermata contatore';

  @override
  String get shareText => 'Condividi l\'applicazione come collegamento';

  @override
  String get shareDefaultText =>
      'Ho visto il mio contatore della morte. Vedi anche tu.';

  @override
  String get menuAbout => 'Di';

  @override
  String get menuEvents => 'Cambiamenti del destino';

  @override
  String get menuShare => 'Condividi schermo';

  @override
  String get menuLanguage => 'Cambia lingua';

  @override
  String get recalculateTitle => 'Sviluppi importanti';

  @override
  String get recalculateDesc =>
      'Un nuovo segno è apparso nel suo destino. Il tempo rimanente deve essere ricalcolato.';

  @override
  String get recalculateButton => 'CALCOLARE ANCORA';

  @override
  String get noEventYet => 'Nessun cambiamento di destino ancora.';

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
