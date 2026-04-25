// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get appTitle => 'Compte à rebours : Compteur de morts';

  @override
  String get appTitleShort => 'Compteur de décès';

  @override
  String get notificationPermissionTitle => 'Autoriser les notifications';

  @override
  String get notificationPermissionText =>
      'Souhaitez-vous recevoir des notifications sur les événements importants de votre vie, les changements de destin et de temps ?';

  @override
  String get notificationPermissionYes => 'Oui';

  @override
  String get notificationPermissionNo => 'Non';

  @override
  String get loading => 'Chargement...';

  @override
  String get startSubtitle =>
      'Vous ne pouvez calculer votre compteur de vie estimé qu’une seule fois.';

  @override
  String get calculateButton => 'CALCULER';

  @override
  String get oneTimeWarning =>
      'Le résultat est créé une seule fois et enregistré en toute sécurité.';

  @override
  String get calculatingTitle => 'Calculateur';

  @override
  String get estimatedTime => 'Temps de calcul estimé : 12 minutes';

  @override
  String get fastCalculateButton =>
      'Calculez rapidement en regardant une courte vidéo';

  @override
  String get loadingAd => 'La vidéo est en préparation...';

  @override
  String get rewardedAdInfo =>
      'Regarder des vidéos permet de sauter le temps de calcul.';

  @override
  String get adNotReady =>
      'La vidéo n\'est pas encore prête. Veuillez réessayer.';

  @override
  String get resultTitle => 'TEMPS RESTANT';

  @override
  String get years => 'ANNÉE';

  @override
  String get days => 'JOUR';

  @override
  String get hours => 'HEURE';

  @override
  String get minutes => 'MINUTE';

  @override
  String get seconds => 'DEUXIÈME';

  @override
  String get importantEvents => 'Développements importants';

  @override
  String get importantEvent => 'développement important';

  @override
  String get noEvents => 'Il n’y a pas encore de développement significatif.';

  @override
  String get lockedResultWarning =>
      'Ce résultat ne peut pas être recalculé. Le même enregistrement est utilisé même si l\'application est supprimée.';

  @override
  String get language => 'Langue';

  @override
  String get disclaimerTitle => 'Avertissement';

  @override
  String get disclaimerText =>
      'Cette application est uniquement destinée à des fins de divertissement. Il ne fournit pas de véritable prédiction sur la santé, la date du décès, l’espérance de vie ou l’avenir.';

  @override
  String get footerWarning =>
      'C\'est à des fins de divertissement. Il ne s’agit pas d’une prédiction de la santé ou de la survie réelle.';

  @override
  String get ok => 'D\'accord';

  @override
  String get eventPositiveTitle =>
      'Il y a eu un développement important dans votre vie';

  @override
  String get eventPositiveDescription =>
      'Selon le système, un effet positif a été constaté sur votre durée de vie.';

  @override
  String get eventNegativeTitle =>
      'Il y a eu un développement important dans votre vie';

  @override
  String get eventNegativeDescription =>
      'Selon le système, un impact négatif sur votre durée de vie a été commis.';

  @override
  String get aboutTitle => 'À propos';

  @override
  String get aboutHeader => 'SYSTÈME DE COMPTE À REBOURS // DERNIER FICHIER';

  @override
  String get aboutText1 =>
      'Cette application est uniquement destinée à des fins de divertissement. Il ne fournit pas d’informations précises sur l’espérance de vie réelle, la date du décès, l’état de santé ou l’avenir.';

  @override
  String get aboutText2 =>
      'Les résultats sont calculés de manière fictive et aléatoire. Il ne s’agit pas d’un conseil médical, psychologique, juridique ou financier.';

  @override
  String get aboutText3 =>
      'Si le contenu vous dérange, arrêtez d\'utiliser l\'application.';

  @override
  String get shareTitle => 'Partager l\'écran';

  @override
  String get shareImage => 'Capture d\'écran du compteur de partage';

  @override
  String get shareText => 'Partager l\'application sous forme de lien';

  @override
  String get shareDefaultText =>
      'J\'ai vu mon compteur de morts. Vous voyez aussi.';

  @override
  String get menuAbout => 'À propos';

  @override
  String get menuEvents => 'Changements de destin';

  @override
  String get menuShare => 'Partager l\'écran';

  @override
  String get menuLanguage => 'Changer de langue';

  @override
  String get recalculateTitle => 'Développements importants';

  @override
  String get recalculateDesc =>
      'Une nouvelle marque apparaît dans son destin. Le temps restant doit être recalculé.';

  @override
  String get recalculateButton => 'CALCULER À NOUVEAU';

  @override
  String get noEventYet => 'Pas de changement de destin pour l\'instant.';
}
