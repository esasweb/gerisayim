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
      'Szeretnél értesítéseket kapni életed fontos eseményeiről, sors- és időbeli változásokról?';

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
  String get estimatedTime => 'A becsültnél tovább tarthat';

  @override
  String get fastCalculateButton =>
      'Gyorsan számoljon egy rövid videó megtekintésével';

  @override
  String get loadingAd => 'A videó készül...';

  @override
  String get rewardedAdInfo =>
      'A videók megtekintése lehetővé teszi a számítási idő kihagyását.';

  @override
  String get adNotReady => 'A videó még nincs kész. Kérjük, próbálja újra.';

  @override
  String get resultTitle => 'FÉRŐDŐ IDŐ';

  @override
  String get years => 'ÉV';

  @override
  String get days => 'NAP';

  @override
  String get months => 'HÓNAP';

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
      'Ez az eredmény nem számítható újra. Ugyanaz a rekord akkor is használatos, ha az alkalmazást törölték.';

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
      'Ez az alkalmazás csak szórakoztató jellegű. Nem ad pontos információt a tényleges várható élettartamról, a halál időpontjáról, az egészségi állapotról vagy a jövőről.';

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

  @override
  String get surveyTitle => 'KOCKÁZAT ÉS TÚLÉLÉS ELEMZÉSE';

  @override
  String surveyStepText(Object step) {
    return 'ELEMZÉS $step / 4';
  }

  @override
  String get surveyNextButton => 'FOLYTATÁS';

  @override
  String get surveyCalculateButton => 'SZÁMÍTSD KI A SORSODAT';

  @override
  String get surveyQ1Title => 'ALVÁSMINTA';

  @override
  String get surveyQ1Desc => 'Átlagosan hány órát alszol naponta?';

  @override
  String surveyQ1Unit(Object hours) {
    return '$hours ÓRA';
  }

  @override
  String get surveyQ2Title => 'KÁROS SZOKÁSOK';

  @override
  String get surveyQ2Desc =>
      'Rendszeresen fogyaszt dohányt, alkoholt vagy erős koffeint?';

  @override
  String get surveyQ2OptionYes => 'IGEN';

  @override
  String get surveyQ2OptionNo => 'NEM';

  @override
  String get surveyQ3Title => 'STRESSZ ÉS szorongás';

  @override
  String get surveyQ3Desc => 'Értékelje napi stresszszintjét (1-10):';

  @override
  String surveyQ3Unit(Object level) {
    return '$level SZINT';
  }

  @override
  String get surveyQ4Title => 'FIZIKAI AKTIVITÁS';

  @override
  String get surveyQ4Desc => 'Hetente hány napot sportolsz?';

  @override
  String surveyQ4Unit(Object days) {
    return '$days NAPOK';
  }
}
