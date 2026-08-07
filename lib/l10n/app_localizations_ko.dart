// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Korean (`ko`).
class AppLocalizationsKo extends AppLocalizations {
  AppLocalizationsKo([String locale = 'ko']) : super(locale);

  @override
  String get appTitle => '카운트다운: 데스 카운터';

  @override
  String get appTitleShort => '데스 카운터';

  @override
  String get notificationPermissionTitle => '알림 허용';

  @override
  String get notificationPermissionText =>
      '인생의 중요한 사건, 운명 및 시간의 변화에 ​​대한 알림을 받고 싶으십니까?';

  @override
  String get notificationPermissionYes => '예';

  @override
  String get notificationPermissionNo => '아니요';

  @override
  String get loading => '로드 중...';

  @override
  String get startSubtitle => '예상 수명 측정기는 한 번만 계산할 수 있습니다.';

  @override
  String get calculateButton => '믿다';

  @override
  String get oneTimeWarning => '결과는 한 번 생성되고 안전하게 저장됩니다.';

  @override
  String get calculatingTitle => '계산 중';

  @override
  String get estimatedTime => '예상 계산 시간: 12분';

  @override
  String get fastCalculateButton => '짧은 영상을 보고 빠르게 계산해보세요';

  @override
  String get loadingAd => '영상 준비중입니다...';

  @override
  String get rewardedAdInfo => '동영상을 시청하면 계산 시간을 건너뛸 수 있습니다.';

  @override
  String get adNotReady => '아직 영상이 준비되지 않았습니다. 다시 시도해 주세요.';

  @override
  String get resultTitle => '남은 시간';

  @override
  String get years => '년도';

  @override
  String get days => '낮';

  @override
  String get hours => '시간';

  @override
  String get minutes => '분';

  @override
  String get seconds => '두번째';

  @override
  String get importantEvents => '중요한 발전';

  @override
  String get importantEvent => '중요한 발전';

  @override
  String get noEvents => '아직은 별다른 발전이 없습니다.';

  @override
  String get lockedResultWarning =>
      '이 결과는 다시 계산할 수 없습니다. 신청서를 삭제하더라도 동일한 기록이 사용됩니다.';

  @override
  String get language => '언어';

  @override
  String get disclaimerTitle => '경고';

  @override
  String get disclaimerText =>
      '이 앱은 엔터테인먼트 목적으로만 사용됩니다. 이는 건강, 사망 날짜, 기대 수명 또는 미래에 대한 정확한 예측을 제공하지 않습니다.';

  @override
  String get footerWarning => '오락용입니다. 이는 실제 건강이나 생존을 예측하는 것이 아닙니다.';

  @override
  String get ok => '좋아요';

  @override
  String get eventPositiveTitle => '당신의 인생에 중요한 발전이 있었습니다';

  @override
  String get eventPositiveDescription => '시스템에 따르면, 당신의 수명에 긍정적인 효과가 처리되었습니다.';

  @override
  String get eventNegativeTitle => '당신의 인생에 중요한 발전이 있었습니다';

  @override
  String get eventNegativeDescription => '시스템에 따르면 귀하의 수명에 부정적인 영향을 미쳤습니다.';

  @override
  String get aboutTitle => '에 대한';

  @override
  String get aboutHeader => '카운트다운 시스템 // 마지막 파일';

  @override
  String get aboutText1 =>
      '이 앱은 엔터테인먼트 목적으로만 사용됩니다. 실제 기대 수명, 사망 날짜, 건강 상태 또는 미래에 대한 정확한 정보를 제공하지 않습니다.';

  @override
  String get aboutText2 =>
      '결과는 허구적이고 무작위로 계산됩니다. 이는 의학적, 심리적, 법적 또는 재정적 조언이 아닙니다.';

  @override
  String get aboutText3 => '콘텐츠가 거슬린다면 앱 사용을 중단하세요.';

  @override
  String get shareTitle => '화면 공유';

  @override
  String get shareImage => '카운터 스크린샷 공유';

  @override
  String get shareText => '애플리케이션을 링크로 공유';

  @override
  String get shareDefaultText => '나는 죽음의 카운터를 보았다. 당신도 볼 수 있습니다.';

  @override
  String get menuAbout => '에 대한';

  @override
  String get menuEvents => '운명의 변화';

  @override
  String get menuShare => '화면 공유';

  @override
  String get menuLanguage => '언어 변경';

  @override
  String get recalculateTitle => '중요한 발전';

  @override
  String get recalculateDesc => '그의 운명에 새로운 표시가 나타났습니다. 남은 시간을 다시 계산해야 합니다.';

  @override
  String get recalculateButton => '다시 계산해 보세요';

  @override
  String get noEventYet => '아직 운명의 변화는 없습니다.';

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
