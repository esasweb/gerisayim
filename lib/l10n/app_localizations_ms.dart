// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Malay (`ms`).
class AppLocalizationsMs extends AppLocalizations {
  AppLocalizationsMs([String locale = 'ms']) : super(locale);

  @override
  String get appTitle => 'Undur: Kaunter Kematian';

  @override
  String get appTitleShort => 'Kaunter Kematian';

  @override
  String get notificationPermissionTitle => 'Benarkan pemberitahuan';

  @override
  String get notificationPermissionText =>
      'Adakah anda ingin menerima pemberitahuan tentang peristiwa penting dalam hidup anda, perubahan nasib dan masa?';

  @override
  String get notificationPermissionYes => 'ya';

  @override
  String get notificationPermissionNo => 'Tidak';

  @override
  String get loading => 'Memuatkan...';

  @override
  String get startSubtitle =>
      'Anda hanya boleh mengira anggaran meter hayat anda sekali.';

  @override
  String get calculateButton => 'MENGIRA';

  @override
  String get oneTimeWarning =>
      'Hasilnya dibuat sekali dan disimpan dengan selamat.';

  @override
  String get calculatingTitle => 'Mengira';

  @override
  String get estimatedTime => 'Anggaran masa pengiraan: 12 minit';

  @override
  String get fastCalculateButton => 'Kira cepat dengan menonton video pendek';

  @override
  String get loadingAd => 'Video sedang disediakan...';

  @override
  String get rewardedAdInfo =>
      'Menonton video membolehkan anda melangkau masa pengiraan.';

  @override
  String get adNotReady => 'Video belum siap lagi. Sila cuba lagi.';

  @override
  String get resultTitle => 'MASA YANG BAKI';

  @override
  String get years => 'TAHUN';

  @override
  String get days => 'HARI';

  @override
  String get hours => 'JAM';

  @override
  String get minutes => 'MINIT';

  @override
  String get seconds => 'KEDUA';

  @override
  String get importantEvents => 'Perkembangan Penting';

  @override
  String get importantEvent => 'perkembangan penting';

  @override
  String get noEvents => 'Belum ada perkembangan yang ketara.';

  @override
  String get lockedResultWarning =>
      'Keputusan ini tidak boleh dikira semula. Rekod yang sama digunakan walaupun aplikasi dipadamkan.';

  @override
  String get language => 'Bahasa';

  @override
  String get disclaimerTitle => 'Amaran';

  @override
  String get disclaimerText =>
      'Aplikasi ini adalah untuk tujuan hiburan sahaja. Ia tidak memberikan ramalan sebenar kesihatan, tarikh kematian, jangka hayat atau masa depan.';

  @override
  String get footerWarning =>
      'Ia adalah untuk tujuan hiburan. Ia bukan ramalan kesihatan sebenar atau kelangsungan hidup.';

  @override
  String get ok => 'Ok';

  @override
  String get eventPositiveTitle =>
      'Terdapat perkembangan penting dalam hidup anda';

  @override
  String get eventPositiveDescription =>
      'Mengikut sistem, kesan positif telah diproses pada jangka hayat anda.';

  @override
  String get eventNegativeTitle =>
      'Terdapat perkembangan penting dalam hidup anda';

  @override
  String get eventNegativeDescription =>
      'Mengikut sistem, kesan negatif terhadap jangka hayat anda telah dilakukan.';

  @override
  String get aboutTitle => 'Tentang';

  @override
  String get aboutHeader => 'SISTEM COUNTDOWN // FAIL TERAKHIR';

  @override
  String get aboutText1 =>
      'Aplikasi ini adalah untuk tujuan hiburan sahaja. Ia tidak memberikan maklumat tepat tentang jangka hayat sebenar, tarikh kematian, status kesihatan atau masa depan.';

  @override
  String get aboutText2 =>
      'Hasilnya dikira secara fiksyen dan rawak. Ia bukan nasihat perubatan, psikologi, undang-undang atau kewangan.';

  @override
  String get aboutText3 =>
      'Jika kandungan mengganggu anda, berhenti menggunakan apl itu.';

  @override
  String get shareTitle => 'Kongsi Skrin';

  @override
  String get shareImage => 'Kongsi Tangkapan Skrin Balas';

  @override
  String get shareText => 'Kongsi Aplikasi sebagai Pautan';

  @override
  String get shareDefaultText =>
      'Saya melihat kaunter kematian saya. Anda lihat juga.';

  @override
  String get menuAbout => 'Tentang';

  @override
  String get menuEvents => 'Perubahan Takdir';

  @override
  String get menuShare => 'Kongsi Skrin';

  @override
  String get menuLanguage => 'Tukar Bahasa';

  @override
  String get recalculateTitle => 'Perkembangan Penting';

  @override
  String get recalculateDesc =>
      'Tanda baru muncul dalam takdirnya. Masa yang tinggal mesti dikira semula.';

  @override
  String get recalculateButton => 'KIRA LAGI';

  @override
  String get noEventYet => 'Belum ada perubahan nasib.';

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
