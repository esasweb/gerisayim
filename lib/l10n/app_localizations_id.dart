// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Indonesian (`id`).
class AppLocalizationsId extends AppLocalizations {
  AppLocalizationsId([String locale = 'id']) : super(locale);

  @override
  String get appTitle => 'Hitung mundur: Penghitung Kematian';

  @override
  String get appTitleShort => 'Penghitung Kematian';

  @override
  String get notificationPermissionTitle => 'Izinkan notifikasi';

  @override
  String get notificationPermissionText =>
      'Apakah Anda ingin menerima pemberitahuan tentang peristiwa penting dalam hidup Anda, perubahan nasib dan waktu?';

  @override
  String get notificationPermissionYes => 'Ya';

  @override
  String get notificationPermissionNo => 'TIDAK';

  @override
  String get loading => 'Memuat...';

  @override
  String get startSubtitle =>
      'Anda hanya dapat menghitung perkiraan umur Anda satu kali.';

  @override
  String get calculateButton => 'MENGHITUNG';

  @override
  String get oneTimeWarning =>
      'Hasilnya dibuat satu kali dan disimpan dengan aman.';

  @override
  String get calculatingTitle => 'Menghitung';

  @override
  String get estimatedTime => 'Perkiraan waktu perhitungan: 12 menit';

  @override
  String get fastCalculateButton => 'Hitung cepat dengan menonton video pendek';

  @override
  String get loadingAd => 'Video sedang disiapkan...';

  @override
  String get rewardedAdInfo =>
      'Menonton video memungkinkan Anda melewatkan waktu perhitungan.';

  @override
  String get adNotReady => 'Videonya belum siap. Silakan coba lagi.';

  @override
  String get resultTitle => 'SISA WAKTU';

  @override
  String get years => 'TAHUN';

  @override
  String get days => 'HARI';

  @override
  String get hours => 'JAM';

  @override
  String get minutes => 'MENIT';

  @override
  String get seconds => 'KEDUA';

  @override
  String get importantEvents => 'Perkembangan Penting';

  @override
  String get importantEvent => 'perkembangan penting';

  @override
  String get noEvents => 'Belum ada perkembangan yang signifikan.';

  @override
  String get lockedResultWarning =>
      'Hasil ini tidak dapat dihitung ulang. Catatan yang sama digunakan meskipun aplikasi dihapus.';

  @override
  String get language => 'Bahasa';

  @override
  String get disclaimerTitle => 'Peringatan';

  @override
  String get disclaimerText =>
      'Aplikasi ini hanya untuk tujuan hiburan. Ini tidak memberikan prediksi sebenarnya mengenai kesehatan, tanggal kematian, harapan hidup, atau masa depan.';

  @override
  String get footerWarning =>
      'Ini untuk tujuan hiburan. Ini bukanlah prediksi kesehatan atau kelangsungan hidup yang sebenarnya.';

  @override
  String get ok => 'Oke';

  @override
  String get eventPositiveTitle => 'Ada perkembangan penting dalam hidup Anda';

  @override
  String get eventPositiveDescription =>
      'Menurut sistem, efek positif telah diproses pada umur Anda.';

  @override
  String get eventNegativeTitle => 'Ada perkembangan penting dalam hidup Anda';

  @override
  String get eventNegativeDescription =>
      'Menurut sistem, dampak negatif pada umur Anda telah terjadi.';

  @override
  String get aboutTitle => 'Tentang';

  @override
  String get aboutHeader => 'SISTEM HITUNG MUNDUR // FILE TERAKHIR';

  @override
  String get aboutText1 =>
      'Aplikasi ini hanya untuk tujuan hiburan. Laporan ini tidak memberikan informasi akurat mengenai harapan hidup aktual, tanggal kematian, status kesehatan, atau masa depan.';

  @override
  String get aboutText2 =>
      'Hasilnya dihitung secara fiktif dan acak. Ini bukan nasihat medis, psikologis, hukum atau keuangan.';

  @override
  String get aboutText3 =>
      'Jika kontennya mengganggu Anda, berhenti menggunakan aplikasi.';

  @override
  String get shareTitle => 'Bagikan Layar';

  @override
  String get shareImage => 'Bagikan Tangkapan Layar Penghitung';

  @override
  String get shareText => 'Bagikan Aplikasi sebagai Tautan';

  @override
  String get shareDefaultText =>
      'Saya melihat penghitung kematian saya. Anda juga melihatnya.';

  @override
  String get menuAbout => 'Tentang';

  @override
  String get menuEvents => 'Perubahan Takdir';

  @override
  String get menuShare => 'Bagikan Layar';

  @override
  String get menuLanguage => 'Ubah Bahasa';

  @override
  String get recalculateTitle => 'Perkembangan Penting';

  @override
  String get recalculateDesc =>
      'Sebuah tanda baru muncul dalam takdirnya. Waktu yang tersisa harus dihitung ulang.';

  @override
  String get recalculateButton => 'HITUNG LAGI';

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
