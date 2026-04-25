// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Polish (`pl`).
class AppLocalizationsPl extends AppLocalizations {
  AppLocalizationsPl([String locale = 'pl']) : super(locale);

  @override
  String get appTitle => 'Odliczanie: Licznik zgonów';

  @override
  String get appTitleShort => 'Licznik śmierci';

  @override
  String get notificationPermissionTitle => 'Zezwalaj na powiadomienia';

  @override
  String get notificationPermissionText =>
      'Czy chciałbyś otrzymywać powiadomienia o ważnych wydarzeniach w Twoim życiu, zmianach losu i czasu?';

  @override
  String get notificationPermissionYes => 'Tak';

  @override
  String get notificationPermissionNo => 'NIE';

  @override
  String get loading => 'Załadunek...';

  @override
  String get startSubtitle =>
      'Szacowany licznik życia możesz obliczyć tylko raz.';

  @override
  String get calculateButton => 'OBLICZAĆ';

  @override
  String get oneTimeWarning =>
      'Wynik jest tworzony raz i bezpiecznie zapisywany.';

  @override
  String get calculatingTitle => 'Obliczenie';

  @override
  String get estimatedTime => 'Szacowany czas obliczeń: 12 minut';

  @override
  String get fastCalculateButton => 'Oblicz szybko, oglądając krótki film';

  @override
  String get loadingAd => 'Film jest w przygotowaniu...';

  @override
  String get rewardedAdInfo =>
      'Oglądanie filmów pozwala pominąć czas obliczeń.';

  @override
  String get adNotReady => 'Film nie jest jeszcze gotowy. Spróbuj ponownie.';

  @override
  String get resultTitle => 'POZOSTAŁY CZAS';

  @override
  String get years => 'ROK';

  @override
  String get days => 'DZIEŃ';

  @override
  String get hours => 'GODZINA';

  @override
  String get minutes => 'CHWILA';

  @override
  String get seconds => 'DRUGI';

  @override
  String get importantEvents => 'Ważne wydarzenia';

  @override
  String get importantEvent => 'ważny rozwój';

  @override
  String get noEvents => 'Nie ma jeszcze znaczącego rozwoju.';

  @override
  String get lockedResultWarning =>
      'Wyniku tego nie można przeliczyć. Ten sam rekord jest używany nawet w przypadku usunięcia aplikacji.';

  @override
  String get language => 'Język';

  @override
  String get disclaimerTitle => 'Ostrzeżenie';

  @override
  String get disclaimerText =>
      'Ta aplikacja służy wyłącznie celom rozrywkowym. Nie pozwala na prawdziwą prognozę stanu zdrowia, daty śmierci, oczekiwanej długości życia ani przyszłości.';

  @override
  String get footerWarning =>
      'To jest w celach rozrywkowych. Nie jest to prognoza faktycznego stanu zdrowia ani przeżycia.';

  @override
  String get ok => 'OK';

  @override
  String get eventPositiveTitle => 'W Twoim życiu nastąpił ważny rozwój';

  @override
  String get eventPositiveDescription =>
      'Według systemu zaobserwowano pozytywny wpływ na długość życia.';

  @override
  String get eventNegativeTitle => 'W Twoim życiu nastąpił ważny rozwój';

  @override
  String get eventNegativeDescription =>
      'Według systemu doszło do negatywnego wpływu na długość życia.';

  @override
  String get aboutTitle => 'O';

  @override
  String get aboutHeader => 'SYSTEM ODLICZANIA // OSTATNI PLIK';

  @override
  String get aboutText1 =>
      'Ta aplikacja służy wyłącznie celom rozrywkowym. Nie podaje dokładnych informacji na temat rzeczywistej długości życia, daty śmierci, stanu zdrowia ani przyszłości.';

  @override
  String get aboutText2 =>
      'Wyniki są obliczane fikcyjnie i losowo. Nie jest to porada medyczna, psychologiczna, prawna ani finansowa.';

  @override
  String get aboutText3 =>
      'Jeśli treść Cię niepokoi, przestań korzystać z aplikacji.';

  @override
  String get shareTitle => 'Udostępnij ekran';

  @override
  String get shareImage => 'Udostępnij zrzut ekranu licznika';

  @override
  String get shareText => 'Udostępnij aplikację jako link';

  @override
  String get shareDefaultText =>
      'Widziałem mój licznik zgonów. Ty też widzisz.';

  @override
  String get menuAbout => 'O';

  @override
  String get menuEvents => 'Zmiany przeznaczenia';

  @override
  String get menuShare => 'Udostępnij ekran';

  @override
  String get menuLanguage => 'Zmień język';

  @override
  String get recalculateTitle => 'Ważne wydarzenia';

  @override
  String get recalculateDesc =>
      'W jego przeznaczeniu pojawił się nowy znak. Pozostały czas należy przeliczyć ponownie.';

  @override
  String get recalculateButton => 'OBLICZ PONOWNIE';

  @override
  String get noEventYet => 'Nie ma jeszcze zmiany losu.';
}
