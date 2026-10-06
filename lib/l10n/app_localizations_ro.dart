// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Romanian Moldavian Moldovan (`ro`).
class AppLocalizationsRo extends AppLocalizations {
  AppLocalizationsRo([String locale = 'ro']) : super(locale);

  @override
  String get appTitle => 'Numărătoare inversă: Contor de moarte';

  @override
  String get appTitleShort => 'Contorul de moarte';

  @override
  String get notificationPermissionTitle => 'Permite notificări';

  @override
  String get notificationPermissionText =>
      'Vrei să primești notificări despre evenimente importante din viața ta, schimbări în soartă și timp?';

  @override
  String get notificationPermissionYes => 'Da';

  @override
  String get notificationPermissionNo => 'Nu';

  @override
  String get loading => 'Încărcare...';

  @override
  String get startSubtitle =>
      'Puteți calcula contorul de viață estimat o singură dată.';

  @override
  String get calculateButton => 'CALCULA';

  @override
  String get oneTimeWarning =>
      'Rezultatul este creat o singură dată și salvat în siguranță.';

  @override
  String get calculatingTitle => 'De calculat';

  @override
  String get estimatedTime => 'Poate dura mai mult decât estimat';

  @override
  String get fastCalculateButton =>
      'Calculați rapid vizionând un scurt videoclip';

  @override
  String get loadingAd => 'Videoclipul este în curs de pregătire...';

  @override
  String get rewardedAdInfo =>
      'Vizionarea videoclipurilor vă permite să săriți peste timpul de calcul.';

  @override
  String get adNotReady =>
      'Videoclipul nu este încă gata. Vă rugăm să încercați din nou.';

  @override
  String get resultTitle => 'TIMPUL RĂMÂNS';

  @override
  String get years => 'AN';

  @override
  String get days => 'ZI';

  @override
  String get months => 'LUNĂ';

  @override
  String get hours => 'ORĂ';

  @override
  String get minutes => 'MINUT';

  @override
  String get seconds => 'DOILEA';

  @override
  String get importantEvents => 'Evoluții importante';

  @override
  String get importantEvent => 'dezvoltare importantă';

  @override
  String get noEvents => 'Nu există încă o dezvoltare semnificativă.';

  @override
  String get lockedResultWarning =>
      'Acest rezultat nu poate fi recalculat. Aceeași înregistrare este folosită chiar dacă aplicația este ștearsă.';

  @override
  String get language => 'Limbă';

  @override
  String get disclaimerTitle => 'Avertizare';

  @override
  String get disclaimerText =>
      'Această aplicație este doar în scopuri de divertisment. Nu oferă o predicție reală a sănătății, a datei morții, a speranței de viață sau a viitorului.';

  @override
  String get footerWarning =>
      'Este în scop de divertisment. Nu este o predicție a sănătății reale sau a supraviețuirii.';

  @override
  String get ok => 'Bine';

  @override
  String get eventPositiveTitle =>
      'A existat o dezvoltare importantă în viața ta';

  @override
  String get eventPositiveDescription =>
      'Potrivit sistemului, a fost procesat un efect pozitiv asupra duratei tale de viață.';

  @override
  String get eventNegativeTitle =>
      'A existat o dezvoltare importantă în viața ta';

  @override
  String get eventNegativeDescription =>
      'Potrivit sistemului, a fost comis un impact negativ asupra duratei tale de viață.';

  @override
  String get aboutTitle => 'Despre';

  @override
  String get aboutHeader => 'SISTEM DE NUMĂRĂTORĂ inversă // ULTIMUL FIȘIER';

  @override
  String get aboutText1 =>
      'Această aplicație este doar în scopuri de divertisment. Nu oferă informații exacte despre speranța de viață reală, data decesului, starea de sănătate sau viitor.';

  @override
  String get aboutText2 =>
      'Rezultatele sunt calculate fictiv și aleatoriu. Nu este sfat medical, psihologic, juridic sau financiar.';

  @override
  String get aboutText3 =>
      'Dacă conținutul vă deranjează, nu mai utilizați aplicația.';

  @override
  String get shareTitle => 'Partajați ecranul';

  @override
  String get shareImage => 'Partajare captură de ecran a contorului';

  @override
  String get shareText => 'Partajați aplicația ca link';

  @override
  String get shareDefaultText => 'Mi-am văzut contorul de decese. Vezi si tu.';

  @override
  String get menuAbout => 'Despre';

  @override
  String get menuEvents => 'Schimbări ale destinului';

  @override
  String get menuShare => 'Partajați ecranul';

  @override
  String get menuLanguage => 'Schimbați limba';

  @override
  String get recalculateTitle => 'Evoluții importante';

  @override
  String get recalculateDesc =>
      'Un nou semn a apărut în destinul său. Timpul rămas trebuie recalculat.';

  @override
  String get recalculateButton => 'CALCULAȚI DIN NOU';

  @override
  String get noEventYet => 'Nicio schimbare a destinului încă.';

  @override
  String get surveyTitle => 'ANALIZA RISCURILOR ȘI SUPRAVIEȚIEIUI';

  @override
  String surveyStepText(Object step) {
    return 'ANALIZA $step / 4';
  }

  @override
  String get surveyNextButton => 'CONTINUA';

  @override
  String get surveyCalculateButton => 'CALCULAȚI-VĂ SORTEA';

  @override
  String get surveyQ1Title => 'MODEL DE SOMMN';

  @override
  String get surveyQ1Desc => 'Câte ore dormi în medie pe zi?';

  @override
  String surveyQ1Unit(Object hours) {
    return '$hours CEAS';
  }

  @override
  String get surveyQ2Title => 'Obiceiuri nocive';

  @override
  String get surveyQ2Desc =>
      'Consumați în mod regulat tutun, alcool sau cofeină grea?';

  @override
  String get surveyQ2OptionYes => 'DA';

  @override
  String get surveyQ2OptionNo => 'NU';

  @override
  String get surveyQ3Title => 'STRES ȘI ANXIETATE';

  @override
  String get surveyQ3Desc => 'Evaluează-ți nivelul zilnic de stres (1 - 10):';

  @override
  String surveyQ3Unit(Object level) {
    return 'NIVEL $level';
  }

  @override
  String get surveyQ4Title => 'ACTIVITATEA FIZICĂ';

  @override
  String get surveyQ4Desc => 'Câte zile pe săptămână faci sport?';

  @override
  String surveyQ4Unit(Object days) {
    return '$days ZILE';
  }
}
