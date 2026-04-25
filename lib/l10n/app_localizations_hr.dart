// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Croatian (`hr`).
class AppLocalizationsHr extends AppLocalizations {
  AppLocalizationsHr([String locale = 'hr']) : super(locale);

  @override
  String get appTitle => 'Odbrojavanje: Brojač smrti';

  @override
  String get appTitleShort => 'Brojač smrti';

  @override
  String get notificationPermissionTitle => 'Dopusti obavijesti';

  @override
  String get notificationPermissionText =>
      'Želite li primati obavijesti o važnim događajima u vašem životu, promjenama u sudbini i vremenu?';

  @override
  String get notificationPermissionYes => 'Da';

  @override
  String get notificationPermissionNo => 'Ne';

  @override
  String get loading => 'Učitavanje...';

  @override
  String get startSubtitle =>
      'Svoj procijenjeni vijek trajanja možete izračunati samo jednom.';

  @override
  String get calculateButton => 'IZRAČUNATI';

  @override
  String get oneTimeWarning => 'Rezultat se stvara jednom i sigurno sprema.';

  @override
  String get calculatingTitle => 'Računanje';

  @override
  String get estimatedTime => 'Predviđeno vrijeme izračuna: 12 minuta';

  @override
  String get fastCalculateButton => 'Brzo izračunajte gledajući kratki video';

  @override
  String get loadingAd => 'Video je u pripremi...';

  @override
  String get rewardedAdInfo =>
      'Gledanje videa omogućuje vam da preskočite vrijeme izračuna.';

  @override
  String get adNotReady => 'Video još nije spreman. Molimo pokušajte ponovo.';

  @override
  String get resultTitle => 'PREOSTALO VRIJEME';

  @override
  String get years => 'GODINA';

  @override
  String get days => 'DAN';

  @override
  String get hours => 'SAT';

  @override
  String get minutes => 'MINUTA';

  @override
  String get seconds => 'DRUGI';

  @override
  String get importantEvents => 'Važna kretanja';

  @override
  String get importantEvent => 'važan razvoj';

  @override
  String get noEvents => 'Još nema značajnijeg razvoja.';

  @override
  String get lockedResultWarning =>
      'Ovaj se rezultat ne može ponovno izračunati. Isti se zapis koristi čak i ako se aplikacija izbriše.';

  @override
  String get language => 'Jezik';

  @override
  String get disclaimerTitle => 'Upozorenje';

  @override
  String get disclaimerText =>
      'Ova je aplikacija samo u zabavne svrhe. Ne pruža pravo predviđanje zdravlja, datuma smrti, očekivanog životnog vijeka ili budućnosti.';

  @override
  String get footerWarning =>
      'Služi za zabavne svrhe. To nije predviđanje stvarnog zdravlja ili preživljavanja.';

  @override
  String get ok => 'U redu';

  @override
  String get eventPositiveTitle =>
      'Dogodio se važan razvoj događaja u vašem životu';

  @override
  String get eventPositiveDescription =>
      'Sukladno sustavu, obrađen je pozitivan učinak na vaš životni vijek.';

  @override
  String get eventNegativeTitle =>
      'Dogodio se važan razvoj događaja u vašem životu';

  @override
  String get eventNegativeDescription =>
      'Prema sustavu, počinjen je negativan utjecaj na vaš životni vijek.';

  @override
  String get aboutTitle => 'Oko';

  @override
  String get aboutHeader => 'SUSTAV ODBROJAVANJA // POSLJEDNJA DATOTEKA';

  @override
  String get aboutText1 =>
      'Ova je aplikacija samo u zabavne svrhe. Ne pruža točne informacije o stvarnom očekivanom životnom vijeku, datumu smrti, zdravstvenom stanju ili budućnosti.';

  @override
  String get aboutText2 =>
      'Rezultati se izračunavaju fiktivno i nasumično. To nije medicinski, psihološki, pravni ili financijski savjet.';

  @override
  String get aboutText3 =>
      'Ako vam sadržaj smeta, prestanite koristiti aplikaciju.';

  @override
  String get shareTitle => 'Podijeli zaslon';

  @override
  String get shareImage => 'Snimka zaslona brojača dijeljenja';

  @override
  String get shareText => 'Podijelite aplikaciju kao vezu';

  @override
  String get shareDefaultText => 'Vidio sam svoj brojač smrti. Vidiš i ti.';

  @override
  String get menuAbout => 'Oko';

  @override
  String get menuEvents => 'Promjene sudbine';

  @override
  String get menuShare => 'Podijeli zaslon';

  @override
  String get menuLanguage => 'Promjena jezika';

  @override
  String get recalculateTitle => 'Važna kretanja';

  @override
  String get recalculateDesc =>
      'U njegovoj sudbini pojavio se novi trag. Preostalo vrijeme mora se ponovno izračunati.';

  @override
  String get recalculateButton => 'IZRAČUNAJTE PONOVO';

  @override
  String get noEventYet => 'Još nema promjene sudbine.';
}
