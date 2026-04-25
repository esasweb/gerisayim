// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Portuguese (`pt`).
class AppLocalizationsPt extends AppLocalizations {
  AppLocalizationsPt([String locale = 'pt']) : super(locale);

  @override
  String get appTitle => 'Contagem regressiva: Contador de Morte';

  @override
  String get appTitleShort => 'Contador de Morte';

  @override
  String get notificationPermissionTitle => 'Permitir notificações';

  @override
  String get notificationPermissionText =>
      'Gostaria de receber notificações sobre acontecimentos importantes em sua vida, mudanças no destino e no tempo?';

  @override
  String get notificationPermissionYes => 'Sim';

  @override
  String get notificationPermissionNo => 'Não';

  @override
  String get loading => 'Carregando...';

  @override
  String get startSubtitle =>
      'Você só pode calcular seu medidor de vida estimado uma vez.';

  @override
  String get calculateButton => 'CALCULAR';

  @override
  String get oneTimeWarning =>
      'O resultado é criado uma vez e salvo com segurança.';

  @override
  String get calculatingTitle => 'Calculando';

  @override
  String get estimatedTime => 'Tempo estimado de cálculo: 12 minutos';

  @override
  String get fastCalculateButton =>
      'Calcule rapidamente assistindo a um pequeno vídeo';

  @override
  String get loadingAd => 'O vídeo está sendo preparado...';

  @override
  String get rewardedAdInfo =>
      'Assistir a vídeos permite pular o tempo de cálculo.';

  @override
  String get adNotReady =>
      'O vídeo ainda não está pronto. Por favor, tente novamente.';

  @override
  String get resultTitle => 'TEMPO RESTANTE';

  @override
  String get years => 'ANO';

  @override
  String get days => 'DIA';

  @override
  String get hours => 'HORA';

  @override
  String get minutes => 'MINUTO';

  @override
  String get seconds => 'SEGUNDO';

  @override
  String get importantEvents => 'Desenvolvimentos importantes';

  @override
  String get importantEvent => 'desenvolvimento importante';

  @override
  String get noEvents => 'Ainda não há desenvolvimento significativo.';

  @override
  String get lockedResultWarning =>
      'Este resultado não pode ser recalculado. O mesmo registro é usado mesmo se o aplicativo for excluído.';

  @override
  String get language => 'Linguagem';

  @override
  String get disclaimerTitle => 'Aviso';

  @override
  String get disclaimerText =>
      'Este aplicativo é apenas para fins de entretenimento. Não fornece uma previsão verdadeira da saúde, data da morte, expectativa de vida ou futuro.';

  @override
  String get footerWarning =>
      'É para fins de entretenimento. Não é uma previsão de saúde ou sobrevivência real.';

  @override
  String get ok => 'OK';

  @override
  String get eventPositiveTitle =>
      'Houve um desenvolvimento importante em sua vida';

  @override
  String get eventPositiveDescription =>
      'De acordo com o sistema, um efeito positivo foi processado em sua expectativa de vida.';

  @override
  String get eventNegativeTitle =>
      'Houve um desenvolvimento importante em sua vida';

  @override
  String get eventNegativeDescription =>
      'De acordo com o sistema, foi cometido um impacto negativo na sua expectativa de vida.';

  @override
  String get aboutTitle => 'Sobre';

  @override
  String get aboutHeader => 'SISTEMA DE CONTAGEM REGRESSIVA // ÚLTIMO ARQUIVO';

  @override
  String get aboutText1 =>
      'Este aplicativo é apenas para fins de entretenimento. Não fornece informações precisas sobre a expectativa de vida real, data da morte, estado de saúde ou futuro.';

  @override
  String get aboutText2 =>
      'Os resultados são calculados de forma fictícia e aleatória. Não se trata de aconselhamento médico, psicológico, jurídico ou financeiro.';

  @override
  String get aboutText3 =>
      'Se o conteúdo te incomoda, pare de usar o aplicativo.';

  @override
  String get shareTitle => 'Compartilhar tela';

  @override
  String get shareImage => 'Captura de tela do contador de compartilhamento';

  @override
  String get shareText => 'Compartilhe o aplicativo como link';

  @override
  String get shareDefaultText =>
      'Eu vi meu contador de mortes. Você também vê.';

  @override
  String get menuAbout => 'Sobre';

  @override
  String get menuEvents => 'Mudanças de Destino';

  @override
  String get menuShare => 'Compartilhar tela';

  @override
  String get menuLanguage => 'Alterar idioma';

  @override
  String get recalculateTitle => 'Desenvolvimentos importantes';

  @override
  String get recalculateDesc =>
      'Uma nova marca apareceu em seu destino. O tempo restante deve ser recalculado.';

  @override
  String get recalculateButton => 'CALCULAR NOVAMENTE';

  @override
  String get noEventYet => 'Nenhuma mudança de destino ainda.';
}
