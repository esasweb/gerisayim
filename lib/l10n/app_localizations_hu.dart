// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hungarian (`hu`).
class AppLocalizationsHu extends AppLocalizations {
  AppLocalizationsHu([String locale = 'hu']) : super(locale);

  @override
  String get appTitle => 'Visszaszámlálás: Halálszámláló';

  @override
  String get appTitleShort => 'Halálszámláló';

  @override
  String get notificationPermissionTitle => 'Értesítések engedélyezése';

  @override
  String get notificationPermissionText =>
      'Szeretne értesítéseket kapni élete fontos eseményeiről, sors- és időbeli változásairól?';

  @override
  String get notificationPermissionYes => 'Igen';

  @override
  String get notificationPermissionNo => 'Nem';

  @override
  String get loading => 'Terhelés...';

  @override
  String get startSubtitle =>
      'A becsült élettartam-mérőt csak egyszer számíthatja ki.';

  @override
  String get calculateButton => 'SZÁMÍTSA';

  @override
  String get oneTimeWarning =>
      'Az eredmény egyszer jön létre és biztonságosan elmentésre kerül.';

  @override
  String get calculatingTitle => 'Számító';

  @override
  String get estimatedTime => 'Várható számítási idő: 12 perc';

  @override
  String get fastCalculateButton =>
      'Gyorsan számoljon egy rövid videó megtekintésével';

  @override
  String get loadingAd => 'A videó készül...';

  @override
  String get rewardedAdInfo =>
      'A videók megtekintése lehetővé teszi a számítási idő kihagyását.';

  @override
  String get adNotReady => 'A videó még nem készült el. Kérjük, próbálja újra.';

  @override
  String get resultTitle => 'FÉRŐDŐ IDŐ';

  @override
  String get years => 'ÉV';

  @override
  String get days => 'NAP';

  @override
  String get hours => 'ÓRA';

  @override
  String get minutes => 'PERC';

  @override
  String get seconds => 'MÁSODIK';

  @override
  String get importantEvents => 'Fontos fejlemények';

  @override
  String get importantEvent => 'fontos fejlesztés';

  @override
  String get noEvents => 'Jelentős fejlemény még nincs.';

  @override
  String get lockedResultWarning =>
      'Ez az eredmény nem számítható újra. Ugyanez a rekord akkor is használatos, ha az alkalmazást törölték.';

  @override
  String get language => 'Nyelv';

  @override
  String get disclaimerTitle => 'Figyelmeztetés';

  @override
  String get disclaimerText =>
      'Ez az alkalmazás csak szórakoztató jellegű. Nem ad valós előrejelzést az egészségről, a halál dátumáról, a várható élettartamról vagy a jövőről.';

  @override
  String get footerWarning =>
      'Szórakoztatási célokat szolgál. Ez nem a tényleges egészség vagy túlélés előrejelzése.';

  @override
  String get ok => 'Rendben';

  @override
  String get eventPositiveTitle => 'Fontos fejlemény történt az életedben';

  @override
  String get eventPositiveDescription =>
      'A rendszer szerint pozitív hatással van az Ön élettartamára.';

  @override
  String get eventNegativeTitle => 'Fontos fejlemény történt az életedben';

  @override
  String get eventNegativeDescription =>
      'A rendszer szerint negatív hatással van az Ön élettartamára.';

  @override
  String get aboutTitle => 'Körülbelül';

  @override
  String get aboutHeader => 'VISSZAszámlálási RENDSZER // UTOLSÓ FÁJL';

  @override
  String get aboutText1 =>
      'Ez az alkalmazás csak szórakoztató jellegű. Nem ad pontos információkat a tényleges várható élettartamról, a halál időpontjáról, az egészségi állapotról vagy a jövőről.';

  @override
  String get aboutText2 =>
      'Az eredményeket kitaláltan és véletlenszerűen számítják ki. Ez nem orvosi, pszichológiai, jogi vagy pénzügyi tanács.';

  @override
  String get aboutText3 =>
      'Ha a tartalom zavar, hagyja abba az alkalmazás használatát.';

  @override
  String get shareTitle => 'Képernyő megosztása';

  @override
  String get shareImage => 'Share Counter Screenshot';

  @override
  String get shareText => 'Ossza meg az alkalmazást hivatkozásként';

  @override
  String get shareDefaultText => 'Megláttam a halálszámlálómat. Te is látod.';

  @override
  String get menuAbout => 'Körülbelül';

  @override
  String get menuEvents => 'A sors változásai';

  @override
  String get menuShare => 'Képernyő megosztása';

  @override
  String get menuLanguage => 'Nyelv módosítása';

  @override
  String get recalculateTitle => 'Fontos fejlemények';

  @override
  String get recalculateDesc =>
      'Új jel jelent meg a sorsában. A fennmaradó időt újra kell számolni.';

  @override
  String get recalculateButton => 'SZÁMÍTS ÚJRA';

  @override
  String get noEventYet => 'Még nincs sorsváltás.';
}
