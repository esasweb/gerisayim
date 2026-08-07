// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Chinese (`zh`).
class AppLocalizationsZh extends AppLocalizations {
  AppLocalizationsZh([String locale = 'zh']) : super(locale);

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

/// The translations for Chinese, using the Han script (`zh_Hans`).
class AppLocalizationsZhHans extends AppLocalizationsZh {
  AppLocalizationsZhHans() : super('zh_Hans');

  @override
  String get appTitle => '倒计时：死亡计数器';

  @override
  String get appTitleShort => '死亡计数器';

  @override
  String get notificationPermissionTitle => '允许通知';

  @override
  String get notificationPermissionText => '您想接收有关您生活中的重要事件、命运和时间变化的通知吗？';

  @override
  String get notificationPermissionYes => '是的';

  @override
  String get notificationPermissionNo => '不';

  @override
  String get loading => '加载中...';

  @override
  String get startSubtitle => '您只能计算一次预计生命值。';

  @override
  String get calculateButton => '计算';

  @override
  String get oneTimeWarning => '结果创建一次并安全保存。';

  @override
  String get calculatingTitle => '计算';

  @override
  String get estimatedTime => '预计计算时间：12分钟';

  @override
  String get fastCalculateButton => '通过观看短视频快速计算';

  @override
  String get loadingAd => '视频正在准备中...';

  @override
  String get rewardedAdInfo => '观看视频可以让您跳过计算时间。';

  @override
  String get adNotReady => '视频尚未准备好。请再试一次。';

  @override
  String get resultTitle => '剩余时间';

  @override
  String get years => '年';

  @override
  String get days => '天';

  @override
  String get hours => '小时';

  @override
  String get minutes => '分钟';

  @override
  String get seconds => '第二';

  @override
  String get importantEvents => '重要进展';

  @override
  String get importantEvent => '重要发展';

  @override
  String get noEvents => '目前还没有重大进展。';

  @override
  String get lockedResultWarning => '该结果无法重新计算。即使应用程序被删除，也会使用相同的记录。';

  @override
  String get language => '语言';

  @override
  String get disclaimerTitle => '警告';

  @override
  String get disclaimerText => '此应用程序仅用于娱乐目的。它不能提供对健康状况、死亡日期、预期寿命或未来的真实预测。';

  @override
  String get footerWarning => '这是为了娱乐目的。它不是对实际健康或生存的预测。';

  @override
  String get ok => '好的';

  @override
  String get eventPositiveTitle => '你的人生有了重要的发展';

  @override
  String get eventPositiveDescription => '根据系统的说法，已经对你的寿命产生了积极的影响。';

  @override
  String get eventNegativeTitle => '你的人生有了重要的发展';

  @override
  String get eventNegativeDescription => '根据系统的判断，你的寿命已经受到了负面影响。';

  @override
  String get aboutTitle => '关于';

  @override
  String get aboutHeader => '倒计时系统 // 最后一个文件';

  @override
  String get aboutText1 => '此应用程序仅用于娱乐目的。它不提供有关实际预期寿命、死亡日期、健康状况或未来的准确信息。';

  @override
  String get aboutText2 => '结果是虚构且随机计算的。这不是医疗、心理、法律或财务建议。';

  @override
  String get aboutText3 => '如果内容令您烦恼，请停止使用该应用程序。';

  @override
  String get shareTitle => '共享屏幕';

  @override
  String get shareImage => '分享计数器截图';

  @override
  String get shareText => '将应用程序共享为链接';

  @override
  String get shareDefaultText => '我看到了我的死亡计数器。你也看到了。';

  @override
  String get menuAbout => '关于';

  @override
  String get menuEvents => '命运的改变';

  @override
  String get menuShare => '共享屏幕';

  @override
  String get menuLanguage => '更改语言';

  @override
  String get recalculateTitle => '重要进展';

  @override
  String get recalculateDesc => '他的命运出现了新的印记。剩余时间必须重新计算。';

  @override
  String get recalculateButton => '再次计算';

  @override
  String get noEventYet => '命运还没有改变。';
}

/// The translations for Chinese, using the Han script (`zh_Hant`).
class AppLocalizationsZhHant extends AppLocalizationsZh {
  AppLocalizationsZhHant() : super('zh_Hant');

  @override
  String get appTitle => '倒數計時：死亡計數器';

  @override
  String get appTitleShort => '死亡計數器';

  @override
  String get notificationPermissionTitle => '允許通知';

  @override
  String get notificationPermissionText => '您想接收有關您生活中的重要事件、命運和時間變化的通知嗎？';

  @override
  String get notificationPermissionYes => '是的';

  @override
  String get notificationPermissionNo => '不';

  @override
  String get loading => '載入中...';

  @override
  String get startSubtitle => '您只能計算一次預計生命值。';

  @override
  String get calculateButton => '計算';

  @override
  String get oneTimeWarning => '結果創建一次並安全保存。';

  @override
  String get calculatingTitle => '計算';

  @override
  String get estimatedTime => '預計計算時間：12分鐘';

  @override
  String get fastCalculateButton => '透過觀看短影片快速計算';

  @override
  String get loadingAd => '影片正在準備中...';

  @override
  String get rewardedAdInfo => '觀看影片可以讓您跳過計算時間。';

  @override
  String get adNotReady => '影片尚未準備好。請再試一次。';

  @override
  String get resultTitle => '剩餘時間';

  @override
  String get years => '年';

  @override
  String get days => '天';

  @override
  String get hours => '小時';

  @override
  String get minutes => '分分鐘';

  @override
  String get seconds => '第二';

  @override
  String get importantEvents => '重要進展';

  @override
  String get importantEvent => '重要發展';

  @override
  String get noEvents => '目前還沒有重大進展。';

  @override
  String get lockedResultWarning => '該結果無法重新計算。即使應用程式被刪除，也會使用相同的記錄。';

  @override
  String get language => '語言';

  @override
  String get disclaimerTitle => '警告';

  @override
  String get disclaimerText => '此應用程式僅用於娛樂目的。它不能提供對健康狀況、死亡日期、預期壽命或未來的真實預測。';

  @override
  String get footerWarning => '這是為了娛樂目的。它不是實際健康或生存的預測。';

  @override
  String get ok => '好的';

  @override
  String get eventPositiveTitle => '你的人生有了重要的發展';

  @override
  String get eventPositiveDescription => '根據系統的說法，已經對你的壽命產生了積極的影響。';

  @override
  String get eventNegativeTitle => '你的人生有了重要的發展';

  @override
  String get eventNegativeDescription => '根據系統的判斷，你的壽命已經受到了負面影響。';

  @override
  String get aboutTitle => '關於';

  @override
  String get aboutHeader => '倒數計時系統 // 最後一個文件';

  @override
  String get aboutText1 => '此應用程式僅用於娛樂目的。它不提供有關實際預期壽命、死亡日期、健康狀況或未來的準確資訊。';

  @override
  String get aboutText2 => '結果是虛構且隨機計算的。這不是醫療、心理、法律或財務建議。';

  @override
  String get aboutText3 => '如果內容令您煩惱，請停止使用應用程式。';

  @override
  String get shareTitle => '共享螢幕';

  @override
  String get shareImage => '分享計數器截圖';

  @override
  String get shareText => '將應用程式共享為鏈接';

  @override
  String get shareDefaultText => '我看到了我的死亡計數器。你也看到了。';

  @override
  String get menuAbout => '關於';

  @override
  String get menuEvents => '命運的改變';

  @override
  String get menuShare => '共享螢幕';

  @override
  String get menuLanguage => '更改語言';

  @override
  String get recalculateTitle => '重要進展';

  @override
  String get recalculateDesc => '他的命運出現了新的印記。剩餘時間必須重新計算。';

  @override
  String get recalculateButton => '再次計算';

  @override
  String get noEventYet => '命運還沒改變。';
}
