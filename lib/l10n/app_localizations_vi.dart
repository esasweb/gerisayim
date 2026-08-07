// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Vietnamese (`vi`).
class AppLocalizationsVi extends AppLocalizations {
  AppLocalizationsVi([String locale = 'vi']) : super(locale);

  @override
  String get appTitle => 'Đếm Ngược: Máy Đếm Tử Thần';

  @override
  String get appTitleShort => 'Máy đếm tử thần';

  @override
  String get notificationPermissionTitle => 'Cho phép thông báo';

  @override
  String get notificationPermissionText =>
      'Bạn có muốn nhận thông báo về những sự kiện quan trọng trong cuộc đời, những thay đổi về số phận và thời gian không?';

  @override
  String get notificationPermissionYes => 'Đúng';

  @override
  String get notificationPermissionNo => 'KHÔNG';

  @override
  String get loading => 'Đang tải...';

  @override
  String get startSubtitle =>
      'Bạn chỉ có thể tính toán đồng hồ đo tuổi thọ ước tính của mình một lần.';

  @override
  String get calculateButton => 'TÍNH TOÁN';

  @override
  String get oneTimeWarning => 'Kết quả được tạo một lần và được lưu an toàn.';

  @override
  String get calculatingTitle => 'Tính toán';

  @override
  String get estimatedTime => 'Thời gian tính toán dự kiến: 12 phút';

  @override
  String get fastCalculateButton =>
      'Tính toán nhanh chóng bằng cách xem một đoạn video ngắn';

  @override
  String get loadingAd => 'Video đang được chuẩn bị...';

  @override
  String get rewardedAdInfo =>
      'Xem video cho phép bạn bỏ qua thời gian tính toán.';

  @override
  String get adNotReady => 'Video vẫn chưa sẵn sàng. Vui lòng thử lại.';

  @override
  String get resultTitle => 'THỜI GIAN CÒN LẠI';

  @override
  String get years => 'NĂM';

  @override
  String get days => 'NGÀY';

  @override
  String get hours => 'GIỜ';

  @override
  String get minutes => 'PHÚT';

  @override
  String get seconds => 'THỨ HAI';

  @override
  String get importantEvents => 'Những phát triển quan trọng';

  @override
  String get importantEvent => 'sự phát triển quan trọng';

  @override
  String get noEvents => 'Hiện vẫn chưa có sự phát triển đáng kể.';

  @override
  String get lockedResultWarning =>
      'Kết quả này không thể tính lại được. Bản ghi tương tự được sử dụng ngay cả khi ứng dụng bị xóa.';

  @override
  String get language => 'Ngôn ngữ';

  @override
  String get disclaimerTitle => 'Cảnh báo';

  @override
  String get disclaimerText =>
      'Ứng dụng này chỉ dành cho mục đích giải trí. Nó không đưa ra dự đoán chính xác về sức khỏe, ngày mất, tuổi thọ hoặc tương lai.';

  @override
  String get footerWarning =>
      'Nó là dành cho mục đích giải trí. Nó không phải là một dự đoán về sức khỏe thực tế hoặc khả năng sống sót.';

  @override
  String get ok => 'Được rồi';

  @override
  String get eventPositiveTitle =>
      'Đã có một sự phát triển quan trọng trong cuộc sống của bạn';

  @override
  String get eventPositiveDescription =>
      'Theo hệ thống, một tác động tích cực đã được xử lý đối với tuổi thọ của bạn.';

  @override
  String get eventNegativeTitle =>
      'Đã có một sự phát triển quan trọng trong cuộc sống của bạn';

  @override
  String get eventNegativeDescription =>
      'Theo hệ thống, tác động tiêu cực đến tuổi thọ của bạn đã được thực hiện.';

  @override
  String get aboutTitle => 'Về';

  @override
  String get aboutHeader => 'HỆ THỐNG ĐẾM NGƯỢC // FILE CUỐI CÙNG';

  @override
  String get aboutText1 =>
      'Ứng dụng này chỉ dành cho mục đích giải trí. Nó không cung cấp thông tin chính xác về tuổi thọ thực tế, ngày chết, tình trạng sức khỏe hoặc tương lai.';

  @override
  String get aboutText2 =>
      'Kết quả được tính toán hư cấu và ngẫu nhiên. Đây không phải là lời khuyên về y tế, tâm lý, pháp lý hoặc tài chính.';

  @override
  String get aboutText3 =>
      'Nếu nội dung làm phiền bạn, hãy ngừng sử dụng ứng dụng.';

  @override
  String get shareTitle => 'Chia sẻ màn hình';

  @override
  String get shareImage => 'Chia sẻ ảnh chụp màn hình bộ đếm';

  @override
  String get shareText => 'Chia sẻ ứng dụng dưới dạng liên kết';

  @override
  String get shareDefaultText =>
      'Tôi nhìn thấy quầy đếm cái chết của tôi. Bạn cũng thấy đấy.';

  @override
  String get menuAbout => 'Về';

  @override
  String get menuEvents => 'Những thay đổi của số phận';

  @override
  String get menuShare => 'Chia sẻ màn hình';

  @override
  String get menuLanguage => 'Thay đổi ngôn ngữ';

  @override
  String get recalculateTitle => 'Những phát triển quan trọng';

  @override
  String get recalculateDesc =>
      'Một dấu ấn mới xuất hiện trong số phận của anh. Thời gian còn lại phải được tính toán lại.';

  @override
  String get recalculateButton => 'TÍNH LẠI';

  @override
  String get noEventYet => 'Số phận vẫn chưa thay đổi.';

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
