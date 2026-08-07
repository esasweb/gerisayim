// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Turkish (`tr`).
class AppLocalizationsTr extends AppLocalizations {
  AppLocalizationsTr([String locale = 'tr']) : super(locale);

  @override
  String get appTitle => 'Geri Sayım: Ölüm Sayacı';

  @override
  String get appTitleShort => 'Ölüm Sayacı';

  @override
  String get notificationPermissionTitle => 'Bildirimlere izin ver';

  @override
  String get notificationPermissionText =>
      'Hayatındaki önemli olayları, kader ve zaman değişimlerini bildirim olarak almak ister misin?';

  @override
  String get notificationPermissionYes => 'Evet';

  @override
  String get notificationPermissionNo => 'Hayır';

  @override
  String get loading => 'Yükleniyor...';

  @override
  String get startSubtitle =>
      'Tahmini yaşam sayacınızı yalnızca bir kez hesaplayabilirsiniz.';

  @override
  String get calculateButton => 'HESAPLA';

  @override
  String get oneTimeWarning =>
      'Sonuç bir kez oluşturulur ve güvenli şekilde kaydedilir.';

  @override
  String get calculatingTitle => 'Hesaplanıyor';

  @override
  String get estimatedTime => 'Tahmini hesaplama süresi: 12 dakika';

  @override
  String get fastCalculateButton => 'Kısa video izleyerek hızlı hesapla';

  @override
  String get loadingAd => 'Video hazırlanıyor...';

  @override
  String get rewardedAdInfo =>
      'Video izlemek hesaplama süresini atlamanızı sağlar.';

  @override
  String get adNotReady => 'Video henüz hazır değil. Lütfen tekrar deneyin.';

  @override
  String get resultTitle => 'KALAN SÜRE';

  @override
  String get years => 'YIL';

  @override
  String get days => 'GÜN';

  @override
  String get hours => 'SAAT';

  @override
  String get minutes => 'DAKİKA';

  @override
  String get seconds => 'SANİYE';

  @override
  String get importantEvents => 'Önemli Gelişmeler';

  @override
  String get importantEvent => 'Önemli gelişme';

  @override
  String get noEvents => 'Henüz önemli bir gelişme yok.';

  @override
  String get lockedResultWarning =>
      'Bu sonuç tekrar hesaplanamaz. Uygulama silinse bile aynı kayıt kullanılır.';

  @override
  String get language => 'Dil';

  @override
  String get disclaimerTitle => 'Uyarı';

  @override
  String get disclaimerText =>
      'Bu uygulama yalnızca eğlence amaçlıdır. Sağlık, ölüm tarihi, yaşam süresi veya gelecek hakkında gerçek bir tahmin sunmaz.';

  @override
  String get footerWarning =>
      'Eğlence amaçlıdır. Gerçek sağlık veya yaşam tahmini değildir.';

  @override
  String get ok => 'Tamam';

  @override
  String get eventPositiveTitle => 'Hayatınızda önemli bir gelişme oldu';

  @override
  String get eventPositiveDescription =>
      'Sisteme göre yaşam sürenize olumlu bir etki işlendi.';

  @override
  String get eventNegativeTitle => 'Hayatınızda önemli bir gelişme oldu';

  @override
  String get eventNegativeDescription =>
      'Sisteme göre yaşam sürenize olumsuz bir etki işlendi.';

  @override
  String get aboutTitle => 'Hakkında';

  @override
  String get aboutHeader => 'GERİ SAYIM SİSTEMİ // SON DOSYA';

  @override
  String get aboutText1 =>
      'Bu uygulama yalnızca eğlence amaçlıdır. Gerçek yaşam süresi, ölüm tarihi, sağlık durumu veya gelecek hakkında kesin bilgi sunmaz.';

  @override
  String get aboutText2 =>
      'Sonuçlar kurgusal ve rastgele hesaplanır. Tıbbi, psikolojik, hukuki veya finansal tavsiye değildir.';

  @override
  String get aboutText3 =>
      'Eğer içerik sizi rahatsız ederse uygulamayı kullanmayı bırakın.';

  @override
  String get shareTitle => 'Ekranı Paylaş';

  @override
  String get shareImage => 'Sayaç Ekran Görüntüsünü Paylaş';

  @override
  String get shareText => 'Uygulamayı Link Olarak Paylaş';

  @override
  String get shareDefaultText => 'Ölüm sayacımı gördüm. Sen de gör.';

  @override
  String get menuAbout => 'Hakkında';

  @override
  String get menuEvents => 'Kader Değişimleri';

  @override
  String get menuShare => 'Ekranı Paylaş';

  @override
  String get menuLanguage => 'Dil Değiştir';

  @override
  String get recalculateTitle => 'Önemli Gelişmeler';

  @override
  String get recalculateDesc =>
      'Kaderinde yeni bir iz belirdi. Kalan süren tekrar hesaplanmalı.';

  @override
  String get recalculateButton => 'TEKRAR HESAPLA';

  @override
  String get noEventYet => 'Henüz kader değişimi yok.';

  @override
  String get surveyTitle => 'RİSK VE YAŞAM ANALİZİ';

  @override
  String surveyStepText(Object step) {
    return 'ANALİZ $step / 4';
  }

  @override
  String get surveyNextButton => 'DEVAM ET';

  @override
  String get surveyCalculateButton => 'KADERİ HESAPLA';

  @override
  String get surveyQ1Title => 'UYKU DÜZENİ';

  @override
  String get surveyQ1Desc => 'Günde ortalama kaç saat uyuyorsunuz?';

  @override
  String surveyQ1Unit(Object hours) {
    return '$hours SAAT';
  }

  @override
  String get surveyQ2Title => 'ZARARLI ALIŞKANLIKLAR';

  @override
  String get surveyQ2Desc =>
      'Düzenli tütün, alkol veya yoğun kafein tüketiyor musunuz?';

  @override
  String get surveyQ2OptionYes => 'EVET';

  @override
  String get surveyQ2OptionNo => 'HAYIR';

  @override
  String get surveyQ3Title => 'STRES VE ANKSİYETE';

  @override
  String get surveyQ3Desc => 'Günlük stres seviyenizi derecelendirin (1 - 10):';

  @override
  String surveyQ3Unit(Object level) {
    return 'SEVİYE $level';
  }

  @override
  String get surveyQ4Title => 'FİZİKSEL AKTİVİTE';

  @override
  String get surveyQ4Desc => 'Haftada kaç gün egzersiz yapıyorsunuz?';

  @override
  String surveyQ4Unit(Object days) {
    return '$days GÜN';
  }
}
