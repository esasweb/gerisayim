// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Japanese (`ja`).
class AppLocalizationsJa extends AppLocalizations {
  AppLocalizationsJa([String locale = 'ja']) : super(locale);

  @override
  String get appTitle => 'カウントダウン: デスカウンター';

  @override
  String get appTitleShort => 'デスカウンター';

  @override
  String get notificationPermissionTitle => '通知を許可する';

  @override
  String get notificationPermissionText =>
      'あなたの人生における重要な出来事、運命や時間の変化についての通知を受け取りたいですか?';

  @override
  String get notificationPermissionYes => 'はい';

  @override
  String get notificationPermissionNo => 'いいえ';

  @override
  String get loading => '読み込み中...';

  @override
  String get startSubtitle => '推定ライフメーターを計算できるのは 1 回だけです。';

  @override
  String get calculateButton => '計算する';

  @override
  String get oneTimeWarning => '結果は一度作成され、安全に保存されます。';

  @override
  String get calculatingTitle => '計算中';

  @override
  String get estimatedTime => '推定計算時間: 12 分';

  @override
  String get fastCalculateButton => '短いビデオを見てすぐに計算しましょう';

  @override
  String get loadingAd => '動画は準備中です...';

  @override
  String get rewardedAdInfo => 'ビデオを視聴すると、計算時間をスキップできます。';

  @override
  String get adNotReady => 'ビデオはまだ準備ができていません。もう一度試してください。';

  @override
  String get resultTitle => '残り時間';

  @override
  String get years => '年';

  @override
  String get days => '日';

  @override
  String get hours => '時間';

  @override
  String get minutes => '分';

  @override
  String get seconds => '2番';

  @override
  String get importantEvents => '重要な進展';

  @override
  String get importantEvent => '重要な開発';

  @override
  String get noEvents => 'まだ大きな進展はありません。';

  @override
  String get lockedResultWarning =>
      'この結果は再計算できません。アプリケーションを削除しても同じレコードが使用されます。';

  @override
  String get language => '言語';

  @override
  String get disclaimerTitle => '警告';

  @override
  String get disclaimerText =>
      'このアプリはエンターテイメントのみを目的としています。健康状態、死亡日、平均余命、または将来についての正確な予測を提供するものではありません。';

  @override
  String get footerWarning => '娯楽目的です。実際の健康状態や生存を予測するものではありません。';

  @override
  String get ok => 'わかりました';

  @override
  String get eventPositiveTitle => 'あなたの人生に重要な進展がありました';

  @override
  String get eventPositiveDescription => 'システムによると、あなたの寿命に対してプラスの効果が処理されました。';

  @override
  String get eventNegativeTitle => 'あなたの人生に重要な進展がありました';

  @override
  String get eventNegativeDescription => 'システムによると、あなたの寿命に悪影響が与えられています。';

  @override
  String get aboutTitle => 'について';

  @override
  String get aboutHeader => 'カウントダウン システム // 最後のファイル';

  @override
  String get aboutText1 =>
      'このアプリはエンターテイメントのみを目的としています。実際の平均余命、死亡日、健康状態、将来に関する正確な情報は提供されません。';

  @override
  String get aboutText2 =>
      '結果は架空かつランダムに計算されます。これは医学的、心理的、法律的、または経済的なアドバイスではありません。';

  @override
  String get aboutText3 => 'コンテンツが気になる場合は、アプリの使用を中止してください。';

  @override
  String get shareTitle => '画面共有';

  @override
  String get shareImage => 'カウンターのスクリーンショットを共有する';

  @override
  String get shareText => 'アプリケーションをリンクとして共有する';

  @override
  String get shareDefaultText => 'デスカウンターを見ました。あなたもそうです。';

  @override
  String get menuAbout => 'について';

  @override
  String get menuEvents => '運命の変化';

  @override
  String get menuShare => '画面共有';

  @override
  String get menuLanguage => '言語を変更する';

  @override
  String get recalculateTitle => '重要な進展';

  @override
  String get recalculateDesc => '彼の運命に新たな痕跡が現れた。残り時間は再計算する必要があります。';

  @override
  String get recalculateButton => '再計算';

  @override
  String get noEventYet => 'まだ運命は変わりません。';
}
