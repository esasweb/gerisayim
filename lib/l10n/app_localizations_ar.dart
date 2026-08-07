// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get appTitle => 'العد التنازلي: عداد الموت';

  @override
  String get appTitleShort => 'عداد الموت';

  @override
  String get notificationPermissionTitle => 'السماح بالإخطارات';

  @override
  String get notificationPermissionText =>
      'هل ترغب في تلقي إشعارات حول الأحداث المهمة في حياتك والتغيرات في القدر والوقت؟';

  @override
  String get notificationPermissionYes => 'نعم';

  @override
  String get notificationPermissionNo => 'لا';

  @override
  String get loading => 'تحميل...';

  @override
  String get startSubtitle =>
      'يمكنك حساب مقياس الحياة المقدر الخاص بك مرة واحدة فقط.';

  @override
  String get calculateButton => 'احسب';

  @override
  String get oneTimeWarning => 'يتم إنشاء النتيجة مرة واحدة وحفظها بشكل آمن.';

  @override
  String get calculatingTitle => 'حساب';

  @override
  String get estimatedTime => 'الوقت المقدر للحساب: 12 دقيقة';

  @override
  String get fastCalculateButton =>
      'قم بالحساب بسرعة من خلال مشاهدة مقطع فيديو قصير';

  @override
  String get loadingAd => 'جاري تحضير الفيديو...';

  @override
  String get rewardedAdInfo => 'تتيح لك مشاهدة مقاطع الفيديو تخطي وقت الحساب.';

  @override
  String get adNotReady => 'الفيديو ليس جاهزا بعد. يرجى المحاولة مرة أخرى.';

  @override
  String get resultTitle => 'الوقت المتبقي';

  @override
  String get years => 'سنة';

  @override
  String get days => 'يوم';

  @override
  String get hours => 'ساعة';

  @override
  String get minutes => 'دقيقة';

  @override
  String get seconds => 'ثانية';

  @override
  String get importantEvents => 'تطورات مهمة';

  @override
  String get importantEvent => 'تطور مهم';

  @override
  String get noEvents => 'لا يوجد تطور ملحوظ حتى الآن.';

  @override
  String get lockedResultWarning =>
      'لا يمكن إعادة حساب هذه النتيجة. يتم استخدام نفس السجل حتى لو تم حذف التطبيق.';

  @override
  String get language => 'لغة';

  @override
  String get disclaimerTitle => 'تحذير';

  @override
  String get disclaimerText =>
      'هذا التطبيق هو لأغراض الترفيه فقط. ولا يوفر تنبؤًا حقيقيًا بالصحة أو تاريخ الوفاة أو متوسط ​​العمر المتوقع أو المستقبل.';

  @override
  String get footerWarning =>
      'إنه لأغراض الترفيه. إنه ليس تنبؤًا بالصحة الفعلية أو البقاء على قيد الحياة.';

  @override
  String get ok => 'نعم';

  @override
  String get eventPositiveTitle => 'لقد حدث تطور مهم في حياتك';

  @override
  String get eventPositiveDescription =>
      'وفقًا للنظام، تمت معالجة تأثير إيجابي على عمرك.';

  @override
  String get eventNegativeTitle => 'لقد حدث تطور مهم في حياتك';

  @override
  String get eventNegativeDescription =>
      'وفقا للنظام، فقد تم ارتكاب تأثير سلبي على حياتك.';

  @override
  String get aboutTitle => 'عن';

  @override
  String get aboutHeader => 'نظام العد التنازلي // الملف الأخير';

  @override
  String get aboutText1 =>
      'هذا التطبيق هو لأغراض الترفيه فقط. ولا يقدم معلومات دقيقة عن متوسط ​​العمر الفعلي أو تاريخ الوفاة أو الحالة الصحية أو المستقبل.';

  @override
  String get aboutText2 =>
      'يتم حساب النتائج بشكل خيالي وعشوائي. إنها ليست نصيحة طبية أو نفسية أو قانونية أو مالية.';

  @override
  String get aboutText3 => 'إذا كان المحتوى يزعجك، توقف عن استخدام التطبيق.';

  @override
  String get shareTitle => 'مشاركة الشاشة';

  @override
  String get shareImage => 'مشاركة لقطة الشاشة للعداد';

  @override
  String get shareText => 'مشاركة التطبيق كرابط';

  @override
  String get shareDefaultText => 'رأيت عداد الموت الخاص بي. ترى أيضا.';

  @override
  String get menuAbout => 'عن';

  @override
  String get menuEvents => 'تغييرات القدر';

  @override
  String get menuShare => 'مشاركة الشاشة';

  @override
  String get menuLanguage => 'تغيير اللغة';

  @override
  String get recalculateTitle => 'تطورات مهمة';

  @override
  String get recalculateDesc =>
      'ظهرت علامة جديدة في مصيره. يجب إعادة حساب الوقت المتبقي.';

  @override
  String get recalculateButton => 'احسب مرة أخرى';

  @override
  String get noEventYet => 'لا يوجد تغيير في المصير بعد.';

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
