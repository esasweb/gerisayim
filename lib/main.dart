import 'dart:async';
import 'dart:io';
import 'dart:math';
import 'dart:typed_data';
import 'dart:ui';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:share_plus/share_plus.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:path_provider/path_provider.dart';
import 'package:torch_light/torch_light.dart';
import 'package:gerisayim/l10n/app_localizations.dart';


final FlutterLocalNotificationsPlugin localNotifications =
    FlutterLocalNotificationsPlugin();

@pragma('vm:entry-point')
Future<void> _firebaseBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp();
}


void main() async {

  
WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey: "AIzaSyAaSLSjCSuWMSxqjVIVl6UBMmIy-6enk0A",
      appId: Platform.isIOS
          ? "1:496877377379:ios:246bd87cc4e92555dc6556"
          : "1:496877377379:android:501eec62794d4145dc6556",
      messagingSenderId: "496877377379",
      projectId: "gerisayim-649a3",
      storageBucket: "gerisayim-649a3.firebasestorage.app",
      iosBundleId: Platform.isIOS ? "com.gerisayim.app" : null,
    ),
  );

  FirebaseMessaging.onBackgroundMessage(_firebaseBackgroundHandler);

const androidInit = AndroidInitializationSettings('@mipmap/launcher_icon');

const iosInit = DarwinInitializationSettings(
  requestAlertPermission: true,
  requestBadgePermission: true,
  requestSoundPermission: true,
);

const initSettings = InitializationSettings(
  android: androidInit,
  iOS: iosInit,
);

await localNotifications.initialize(initSettings);

const androidChannel = AndroidNotificationChannel(
  'important_events',
  'Important Events',
  description: 'Important event notifications',
  importance: Importance.high,
);

await localNotifications
    .resolvePlatformSpecificImplementation<
        AndroidFlutterLocalNotificationsPlugin>()
    ?.createNotificationChannel(androidChannel);

  await MobileAds.instance.initialize();

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  static void setLocale(BuildContext context, Locale locale) {
    context.findAncestorStateOfType<_MyAppState>()?.setLocale(locale);
  }

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Locale? _locale;

  Future<void> setLocale(Locale locale) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('app_language', locale.languageCode);
    setState(() => _locale = locale);
  }

  Future<void> _loadLocale() async {
    final prefs = await SharedPreferences.getInstance();
    final saved = prefs.getString('app_language');

    if (saved != null && saved.isNotEmpty) {
      setState(() => _locale = Locale(saved));
    } else {
      setState(() => _locale = Locale(PlatformDispatcher.instance.locale.languageCode));
    }
  }

@override
void initState() {
  super.initState();
  _loadLocale();
}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, child) {
    return Container(
      color: Colors.black,
      child: child ?? const SizedBox.shrink(),
    );
  },
      onGenerateTitle: (context) => AppLocalizations.of(context)!.appTitleShort,
      debugShowCheckedModeBanner: false,
      locale: _locale,
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Colors.black,
        colorScheme: const ColorScheme.dark(primary: Colors.white),
       fontFamily: 'Orbitron',
      ),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: const DeathCalculatorPage(),
    );
  }
}

enum AppScreenState {
  initializing,
  start,
  calculating,
  result,
  recalculateOffer,
  recalculating,
}

class DeathCalculatorPage extends StatefulWidget {
  const DeathCalculatorPage({super.key});

  @override
  State<DeathCalculatorPage> createState() => _DeathCalculatorPageState();
}

class _DeathCalculatorPageState extends State<DeathCalculatorPage>
    with SingleTickerProviderStateMixin {
  static const int calculationSeconds = 720;

  final GlobalKey _shareKey = GlobalKey();
  final AudioPlayer _bgPlayer = AudioPlayer();
  final AudioPlayer _startPlayer = AudioPlayer();

  AppScreenState _screenState = AppScreenState.initializing;
String? _deviceKey;
  String? _uid;
  DateTime? _targetDate;
  Duration _remainingLife = Duration.zero;
  int _calculationLeft = calculationSeconds;

  Timer? _lifeTimer;
  Timer? _calculationTimer;
  Timer? _flashTimer;
late final AnimationController _splashController;
  InterstitialAd? _interstitialAd;
  bool _interstitialReady = false;
  bool _introAnimationDone = false;
  bool _introFinishScheduled = false;
  bool _menuOpen = false;

  RewardedAd? _rewardedAd;
  bool _rewardedAdReady = false;
  bool _isLoadingRewardedAd = false;
bool _soundEnabled = true;
final Set<int> _introEffectPlayedRows = {};
bool _introMainSoundPlayed = false;
  List<Map<String, dynamic>> _events = [];
DateTime? _introStartTime;
  String get _rewardedAdUnitId {
    return Platform.isAndroid
        ? 'ca-app-pub-6275851890605245/4139338988'
        : 'ca-app-pub-6275851890605245/4107549394';
  } 

  String get _interstitialAdUnitId {
    return Platform.isAndroid
        ? 'ca-app-pub-6275851890605245/1114554543'
        : 'ca-app-pub-6275851890605245/3650797555';
  }

@override
void initState() {
  super.initState();

  _startPlayer.onPlayerComplete.listen((_) async {
    if (!mounted) return;
    if (_soundEnabled) {
      await _resumeAllSounds();
    }
  });

  _splashController = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 900),
  )..repeat(reverse: true);

AudioCache.instance = AudioCache(prefix: 'assets/');
Future.microtask(() async {
  await _startPlayer.setSource(AssetSource('icon/start.mp3'));
  await _bgPlayer.setSource(AssetSource('icon/back.mp3'));
});

  _startBackgroundMusic();
  _startRandomFlashEffect();
  _initApp();
  _loadRewardedAd();
  _loadInterstitialAd();
  _listenNotificationClicks();
}
 
  @override
  void dispose() {
    _startPlayer.dispose();
    _lifeTimer?.cancel();
    _calculationTimer?.cancel();
    _flashTimer?.cancel();
    _splashController.dispose();
    _rewardedAd?.dispose();
    _interstitialAd?.dispose();
    _bgPlayer.dispose();
    _turnFlashOff();
    super.dispose();
  }

void _stopFlashEffect() {
  _flashTimer?.cancel();
  _turnFlashOff(); // varsa açık kapat
}


Future<void> _playStartSound() async {
  try {
    await _startPlayer.stop();
    await _startPlayer.setPlayerMode(PlayerMode.lowLatency);
    await _startPlayer.setVolume(1.0);
    await _startPlayer.resume();
  } catch (e) {
    debugPrint('Start sound error: $e');
  }
}


Future<String> _getDeviceKey() async {
  final deviceInfo = DeviceInfoPlugin();

  if (Platform.isAndroid) {
    final info = await deviceInfo.androidInfo;
    return 'android_${info.id}';
  }

  if (Platform.isIOS) {
    final info = await deviceInfo.iosInfo;
    return 'ios_${info.identifierForVendor ?? 'unknown'}';
  }

  return 'unknown_${DateTime.now().millisecondsSinceEpoch}';
}


Future<void> _playResultIntroEffect() async {
  if (_introMainSoundPlayed) return;

  _introMainSoundPlayed = true;
  _introStartTime = DateTime.now();

  try {
   
   await _startPlayer.setPlayerMode(PlayerMode.lowLatency);
await _startPlayer.setReleaseMode(ReleaseMode.stop);
await _startPlayer.setVolume(1.0);

await _startPlayer.play(AssetSource('icon/start.mp3'));
  } catch (e) {
    debugPrint('Start sound error: $e');
  }

  // 🔥 flash senkron
  try {
    await TorchLight.enableTorch();
    await Future.delayed(const Duration(milliseconds: 120));
    await TorchLight.disableTorch();
  } catch (_) {}
}




Future<void> _startBackgroundMusic() async {
  _soundEnabled = true;
  try {
    await _bgPlayer.stop(); // 🔥 garanti temiz başlat

    await _bgPlayer.setPlayerMode(PlayerMode.mediaPlayer); // 🔥 EN KRİTİK
    await _bgPlayer.setReleaseMode(ReleaseMode.loop);      // sürekli dön
    await _bgPlayer.setVolume(1.0);
await _bgPlayer.seek(Duration.zero);
    await _bgPlayer.play(AssetSource('icon/back.mp3'));
  } catch (e) {
    debugPrint('Music error: $e');
  }
}

  Future<void> _turnFlashOff() async {
    try {
      await TorchLight.disableTorch();
    } catch (_) {}
  }

  void _startRandomFlashEffect() {
  _flashTimer?.cancel();
  final r = Random.secure();

  _flashTimer = Timer.periodic(const Duration(seconds: 3), (_) async {
    if (!mounted) return;

    // %55 ihtimalle çalışır
    if (r.nextInt(100) > 55) return;

    try {
      final count = 2 + r.nextInt(5); // 2-6 arası flash

      for (int i = 0; i < count; i++) {
        await TorchLight.enableTorch();
        await Future.delayed(Duration(milliseconds: 40 + r.nextInt(90)));

        await TorchLight.disableTorch();
        await Future.delayed(Duration(milliseconds: 40 + r.nextInt(120)));
      }
    } catch (e) {
      debugPrint('Flash error: $e');
    }
  });
}

Future<void> _pauseAllSounds() async {
  _soundEnabled = false;
  try {
    await _bgPlayer.pause(); // sadece duraklat
  } catch (_) {}
}

Future<void> _resumeAllSounds() async {
  _soundEnabled = true;

  try {
    if (_bgPlayer.state == PlayerState.paused) {
      await _bgPlayer.resume(); // ✅ kaldığı yer
    } else if (_bgPlayer.state != PlayerState.playing) {
      await _bgPlayer.play(AssetSource('icon/back.mp3')); // fallback
    }
  } catch (e) {
    debugPrint('Resume music error: $e');
  }
}


void _loadInterstitialAd() {
  InterstitialAd.load(
    adUnitId: _interstitialAdUnitId,
    request: const AdRequest(),
    adLoadCallback: InterstitialAdLoadCallback(
      onAdLoaded: (ad) {
        _interstitialAd = ad;
        _interstitialReady = true;

        ad.fullScreenContentCallback = FullScreenContentCallback(
          onAdShowedFullScreenContent: (ad) async {
            await _pauseAllSounds(); // 🔥 TAM BURADA
            _stopFlashEffect(); // 🔥 EKLE
          },
          onAdDismissedFullScreenContent: (ad) async {
            ad.dispose();
            await _resumeAllSounds(); // 🔥 GERİ AÇ
            _startRandomFlashEffect(); // 🔥 EKLE
            _interstitialAd = null;
            _interstitialReady = false;
            _loadInterstitialAd();
          },
          onAdFailedToShowFullScreenContent: (ad, error) async {
            ad.dispose();
            await _resumeAllSounds(); // 🔥 GERİ AÇ
            _interstitialAd = null;
            _interstitialReady = false;
            _loadInterstitialAd();
          },
        );
      },
      onAdFailedToLoad: (error) {
        _interstitialReady = false;
      },
    ),
  );
}

  void _scheduleIntroFinish() {
    if (_introFinishScheduled || _introAnimationDone) return;
    _introFinishScheduled = true;

    Future.delayed(const Duration(milliseconds: 4000), () { 
      if (!mounted) return;
      setState(() => _introAnimationDone = true);

     Future.delayed(const Duration(seconds: 1), () async {
  if (!mounted) return;

  if (_interstitialReady && _interstitialAd != null) {
    await _pauseAllSounds();
    _interstitialAd!.show();
  }
}); 
    }); 
  }

  void _listenNotificationClicks() {
    FirebaseMessaging.onMessage.listen((RemoteMessage message) async {
  final notification = message.notification;

  if (notification != null) {
    await localNotifications.show(
      notification.hashCode,
      notification.title,
      notification.body,
      const NotificationDetails(
        android: AndroidNotificationDetails(
          'important_events',
          'Important Events',
          channelDescription: 'Important event notifications',
          importance: Importance.high,
          priority: Priority.high,
        ),
      ),
    );
  }
});

    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) async {
      if (message.data['type'] == 'important_event') {
        await _openRecalculateOffer();
      }
    });

    FirebaseMessaging.instance.getInitialMessage().then((message) async {
      if (message != null && message.data['type'] == 'important_event') {
        await _openRecalculateOffer();
      }
    });
  }

  Future<void> _openRecalculateOffer() async {
    await _loadEvents();
    if (!mounted) return;
    setState(() => _screenState = AppScreenState.recalculateOffer);
  }

  Future<void> _initApp() async {
    try {
      
      User? user = FirebaseAuth.instance.currentUser;
      user ??= (await FirebaseAuth.instance.signInAnonymously()).user;
      if (user == null) throw Exception('Firebase user oluşturulamadı');

      _uid = user.uid;
      _deviceKey = await _getDeviceKey();
      final lang = PlatformDispatcher.instance.locale.languageCode;

     await _askNotificationPermissionWithModal();

      String? token;
      try {
        token = await FirebaseMessaging.instance.getToken();
      } catch (_) {
        token = null;
      }

      final userRef = FirebaseFirestore.instance.collection('users').doc(_deviceKey);
      final userDoc = await userRef.get();

      if (!userDoc.exists) {
        await userRef.set({
          'uid': _uid,
          'language': lang,
          'fcm_token': token,
          'recalc_required': false,
          'active_event_id': null,
          'active_event_delta_days': null,
          'last_open_at': FieldValue.serverTimestamp(),
          'created_at': FieldValue.serverTimestamp(),
        }, SetOptions(merge: true));
      } else {
        await userRef.set({
          'uid': _uid,
          'language': lang,
          'fcm_token': token,
          'last_open_at': FieldValue.serverTimestamp(),
        }, SetOptions(merge: true));
      }

FirebaseMessaging.instance.onTokenRefresh.listen((newToken) async {
  if (_deviceKey == null) return;

  await FirebaseFirestore.instance.collection('users').doc(_deviceKey).set({
    'fcm_token': newToken,
    'updated_at': FieldValue.serverTimestamp(),
  }, SetOptions(merge: true));

  debugPrint('FCM token refreshed: $newToken');
});

      await _ensureUserDefaults();
      final freshDoc = await userRef.get();
      final data = freshDoc.data() ?? {};

if (data['recalc_required'] == true && data['active_event_seen'] != true) {
  await userRef.set({
    'active_event_seen': true,
    'active_event_seen_at': FieldValue.serverTimestamp(),
  }, SetOptions(merge: true));

  await _loadEvents();

 

  if (mounted) {
    setState(() => _screenState = AppScreenState.recalculateOffer);
  }
  return;
}

      final targetDateRaw = data['target_date'];
      if (targetDateRaw != null && targetDateRaw.toString().isNotEmpty) {
        _targetDate = DateTime.tryParse(targetDateRaw.toString());
      if (_targetDate != null) {
  _introAnimationDone = false;
  _introFinishScheduled = false;
  _introEffectPlayedRows.clear();
  _introMainSoundPlayed = false;

  _startLifeCountdown();
  await _loadEvents();

  if (mounted) {
    _playResultIntroEffect();
    setState(() => _screenState = AppScreenState.result);
  }
  return;
}
      }
     
      if (mounted) { setState(() => _screenState = AppScreenState.start);}
    } catch (e) {
    
      debugPrint('Init error: $e');
      if (mounted) { setState(() => _screenState = AppScreenState.start);}
    }
  }



Future<void> _askNotificationPermissionWithModal() async {
  if (!mounted) return;

  final settings = await FirebaseMessaging.instance.getNotificationSettings();

  if (settings.authorizationStatus == AuthorizationStatus.authorized ||
      settings.authorizationStatus == AuthorizationStatus.provisional) {
    return;
  }

  final l = AppLocalizations.of(context)!;

  final bool? accepted = await showDialog<bool>(
    context: context,
    barrierDismissible: false,
    builder: (context) {
      return AlertDialog(
        backgroundColor: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18),
          side: const BorderSide(color: Colors.white24),
        ),
        title: Text(
          l.notificationPermissionTitle,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w900,
          ),
        ),
        content: Text(
          l.notificationPermissionText,
          style: const TextStyle(
            color: Colors.white70,
            height: 1.45,
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: Text(
              l.notificationPermissionNo,
              style: const TextStyle(color: Colors.white54),
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              foregroundColor: Colors.black,
            ),
            onPressed: () => Navigator.pop(context, true),
            child: Text(l.notificationPermissionYes),
          ),
        ],
      );
    },
  );

  if (accepted == true) {
    await FirebaseMessaging.instance.requestPermission(
      alert: true,
      badge: true,
      sound: true,
    );
  }
}


  Future<void> _ensureUserDefaults() async {
    if (_deviceKey == null) return;
    final userRef = FirebaseFirestore.instance.collection('users').doc(_deviceKey);
    final doc = await userRef.get();
    final data = doc.data() ?? {};
    final Map<String, dynamic> defaults = {};

    if (!data.containsKey('recalc_required')) defaults['recalc_required'] = false;
    if (!data.containsKey('active_event_id')) defaults['active_event_id'] = null;
    if (!data.containsKey('active_event_delta_days')) defaults['active_event_delta_days'] = null;

    if (defaults.isNotEmpty) {
      defaults['updated_at'] = FieldValue.serverTimestamp();
      await userRef.set(defaults, SetOptions(merge: true));
    }
  }

  Future<void> _startCalculation() async {
    if (_deviceKey == null) return;
    final userRef = FirebaseFirestore.instance.collection('users').doc(_deviceKey);
    final doc = await userRef.get();
    final data = doc.data() ?? {};

    if (data['target_date'] != null) {
      _targetDate = DateTime.tryParse(data['target_date'].toString());
      _startLifeCountdown();
      await _loadEvents();
      if (mounted) setState(() => _screenState = AppScreenState.result);
      return;
    }

    await userRef.set({
      'calculation_started_at': FieldValue.serverTimestamp(),
      'calculation_status': 'started',
      'updated_at': FieldValue.serverTimestamp(),
    }, SetOptions(merge: true));

    _calculationTimer?.cancel();
    setState(() {
      _screenState = AppScreenState.calculating;
      _calculationLeft = calculationSeconds;
    });


_calculationTimer = Timer.periodic(const Duration(seconds: 1), (timer) {
   if (_soundEnabled) {
  HapticFeedback.selectionClick();
  SystemSound.play(SystemSoundType.click);
}

  if (!mounted) {
    timer.cancel();
    return;
  }

  if (_calculationLeft <= 1) {
    timer.cancel();
    _finishCalculation();
    return;
  }



  setState(() {
    _calculationLeft--;
  });
});
  }

  Future<void> _finishCalculation() async {
    if (_deviceKey == null) return;
    final userRef = FirebaseFirestore.instance.collection('users').doc(_deviceKey);
    final userDoc = await userRef.get();
    final data = userDoc.data() ?? {};

    if (data['target_date'] != null) {
      _targetDate = DateTime.tryParse(data['target_date'].toString());
    } else {
      final randomDays = 7 + Random.secure().nextInt((365 * 50) - 7 + 1);
      _targetDate = DateTime.now().add(Duration(days: randomDays));
      await userRef.set({
        'target_date': _targetDate!.toIso8601String(),
        'target_days': randomDays,
        'calculation_status': 'completed',
        'calculated_at': FieldValue.serverTimestamp(),
        'updated_at': FieldValue.serverTimestamp(),
        'locked': true,
      }, SetOptions(merge: true));
      await _createInitialEvents();
    }

  _introAnimationDone = false;
_introFinishScheduled = false;
_introEffectPlayedRows.clear();
_introMainSoundPlayed = false;
_startLifeCountdown();
await _loadEvents();

if (mounted) {
  _playResultIntroEffect();
  setState(() => _screenState = AppScreenState.result);
}
  }

 void _startRecalculation() {
  _calculationTimer?.cancel();

  setState(() {
    _screenState = AppScreenState.recalculating;
    _calculationLeft = calculationSeconds;
  });

  _calculationTimer = Timer.periodic(const Duration(seconds: 1), (timer) {
     if (_soundEnabled) {
  HapticFeedback.selectionClick();
  SystemSound.play(SystemSoundType.click);
}
    if (!mounted) {
      timer.cancel();
      return;
    }

    if (_calculationLeft <= 1) {
      timer.cancel();
      _finishRecalculation();
      return;
    }

   
    setState(() {
      _calculationLeft--;
    });
  });
}


Future<void> _finishRecalculation() async {
  if (_deviceKey == null) {
    await _finishCalculation();
    return;
  }

  final userRef = FirebaseFirestore.instance.collection('users').doc(_deviceKey);

  DateTime oldTarget = DateTime.now().add(
    Duration(days: 7 + Random.secure().nextInt((365 * 50) - 7 + 1)),
  );

  String? eventId;
  int deltaMinutes = 0;

  try {
    final doc = await userRef.get();
    final data = doc.data() ?? {};

    eventId = data['active_event_id']?.toString();

    deltaMinutes =
        int.tryParse('${data['active_event_delta_minutes'] ?? 0}') ??
        ((int.tryParse('${data['active_event_delta_days'] ?? 0}') ?? 0) * 1440);

    final oldTargetRaw = data['target_date'];

    if (oldTargetRaw != null && oldTargetRaw.toString().isNotEmpty) {
      oldTarget = DateTime.tryParse(oldTargetRaw.toString()) ?? oldTarget;
    }

    final newTarget = oldTarget.add(Duration(minutes: deltaMinutes));

    await userRef.set({
      'target_date': newTarget.toIso8601String(),
      'last_recalculated_at': FieldValue.serverTimestamp(),
      'recalc_required': false,
      'active_event_id': null,
      'active_event_delta_minutes': null,
      'active_event_delta_days': null,
      'active_event_seen': false,
      'updated_at': FieldValue.serverTimestamp(),
      'locked': true,
    }, SetOptions(merge: true));

    if (eventId != null && eventId!.isNotEmpty) {
      await userRef.collection('events').doc(eventId).set({
        'applied': true,
        'old_target_date': oldTarget.toIso8601String(),
        'new_target_date': newTarget.toIso8601String(),
        'applied_at': FieldValue.serverTimestamp(),
      }, SetOptions(merge: true));
    }

    _targetDate = newTarget;
  } catch (e) {
    debugPrint('Recalculation error: $e');
    _targetDate = oldTarget.add(Duration(minutes: deltaMinutes));
  }

  _introAnimationDone = false;
_introFinishScheduled = false;
_introEffectPlayedRows.clear();
_introMainSoundPlayed = false;

  await _loadEvents();
  _startLifeCountdown();



  if (mounted) {
  _playResultIntroEffect();
  setState(() => _screenState = AppScreenState.result);
}
  Future.delayed(const Duration(milliseconds: 50), () {
  if (!mounted) return;
  setState(() {});
}); 
}

  Future<void> _createInitialEvents() async {
    if (_deviceKey == null) return;
    final l = AppLocalizations.of(context)!;
    final batch = FirebaseFirestore.instance.batch();
    final eventsRef = FirebaseFirestore.instance.collection('users').doc(_deviceKey).collection('events');
    final items = [
      {'days_delta': 3, 'title': l.eventPositiveTitle, 'description': l.eventPositiveDescription},
      {'days_delta': -240, 'title': l.eventNegativeTitle, 'description': l.eventNegativeDescription},
    ];

    for (final item in items) {
      final doc = eventsRef.doc();
      batch.set(doc, {
        'title': item['title'],
        'description': item['description'],
        'days_delta': item['days_delta'],
        'created_at': FieldValue.serverTimestamp(),
        'source': 'system',
        'read': false,
        'applied': true,
      });
    }
    await batch.commit();
  }

  Future<void> _loadEvents() async {
   if (_deviceKey == null) return;
    final snap = await FirebaseFirestore.instance
        .collection('users')
        .doc(_deviceKey)
        .collection('events')
        .orderBy('created_at', descending: true)
        .limit(50)
        .get();

    _events = snap.docs.map((e) {
      final data = e.data();
      data['id'] = e.id;
      return data;
    }).toList();
  }

  void _startLifeCountdown() {
    _lifeTimer?.cancel();
    if (_targetDate == null) return;

    _remainingLife = _targetDate!.difference(DateTime.now());
    if (_remainingLife.isNegative) _remainingLife = Duration.zero;

    _lifeTimer = Timer.periodic(const Duration(seconds: 1), (_) {
      if (!mounted || _targetDate == null) return;
     if (_soundEnabled) {
  HapticFeedback.selectionClick();
  SystemSound.play(SystemSoundType.click);
}
      final diff = _targetDate!.difference(DateTime.now());
      setState(() => _remainingLife = diff.isNegative ? Duration.zero : diff);
    });
  }

void _loadRewardedAd() {
  if (_isLoadingRewardedAd) return;
  _isLoadingRewardedAd = true;

  RewardedAd.load(
    adUnitId: _rewardedAdUnitId,
    request: const AdRequest(),
    rewardedAdLoadCallback: RewardedAdLoadCallback(
      onAdLoaded: (ad) {
        _rewardedAd = ad;
        _rewardedAdReady = true;
        _isLoadingRewardedAd = false;

        ad.fullScreenContentCallback = FullScreenContentCallback(
          onAdDismissedFullScreenContent: (ad) {
            ad.dispose();
            _rewardedAd = null;
            _rewardedAdReady = false;
            _loadRewardedAd();
          },
          onAdFailedToShowFullScreenContent: (ad, error) {
            ad.dispose();
            _rewardedAd = null;
            _rewardedAdReady = false;
            _loadRewardedAd();
          },
        );

        if (mounted) setState(() {});
      },
      onAdFailedToLoad: (error) {
        debugPrint('Rewarded ad failed: $error');
        _rewardedAdReady = false;
        _isLoadingRewardedAd = false;
        if (mounted) setState(() {});
      },
    ),
  );
}



void _showRewardedAd({bool recalculate = false}) async {
  final ad = _rewardedAd;

  if (ad == null || !_rewardedAdReady) {
    _loadRewardedAd();
    return;
  }

  bool done = false;
  bool rewardEarned = false;

  void finishNow() {
    if (done) return;
    done = true;

    _calculationTimer?.cancel();

    if (recalculate) {
      _finishRecalculation(); // 🔥 await YOK → ANINDA GEÇİŞ
    } else {
      _finishCalculation();   // 🔥 await YOK → ANINDA GEÇİŞ
    }
  }

  ad.fullScreenContentCallback = FullScreenContentCallback(
    onAdShowedFullScreenContent: (ad) async {
      await _pauseAllSounds();
      _stopFlashEffect(); // 🔥 EKLE
    },

    onAdDismissedFullScreenContent: (ad) {
      ad.dispose();

      _rewardedAd = null;
      _rewardedAdReady = false;
      _loadRewardedAd();

      // 🔥 KAPANIR KAPANMAZ GEÇ
      if (rewardEarned) {
        finishNow();
      }
_startRandomFlashEffect(); // 🔥 EKLE
      _resumeAllSounds();
    },

    onAdFailedToShowFullScreenContent: (ad, error) {
      ad.dispose();

      _rewardedAd = null;
      _rewardedAdReady = false;
      _loadRewardedAd();

      _resumeAllSounds();

      // fallback → yine geç
      finishNow();
    },
  );

  ad.show(
    onUserEarnedReward: (_, __) {
      rewardEarned = true; // sadece işaret
    },
  );
}


  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context)!;
    if (_screenState == AppScreenState.initializing) {
  return Scaffold(
    backgroundColor: Colors.black,
    body: _loadingSplashUI(),
  );
}
    Widget child;

    switch (_screenState) {
     case AppScreenState.initializing:
  child = _loadingSplashUI();
  break;
      case AppScreenState.start:
        child = _startUI(l);
        break;
      case AppScreenState.calculating:
        child = _calculatingUI(l);
        break;
  case AppScreenState.result:
  child = RepaintBoundary(
    key: _shareKey,
    child: Container(
      color: Colors.black,
      child: _resultUI(l),
    ),
  );
  break;
      case AppScreenState.recalculateOffer:
        child = _recalculateOfferUI(l);
        break;
      case AppScreenState.recalculating:
        child = _calculatingUI(l);
        break;
    }

    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
               Expanded(
  child: Container(
    color: Colors.black,
    child: child,
  ),
),
                _footer(l),
              ],
            ),
   if (_menuOpen)
  Positioned.fill(
    child: GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () => setState(() => _menuOpen = false),
      child: Container(color: Colors.black.withOpacity(0.85)),
    ),
  ),

if (_menuOpen)
  Positioned(
    right: 18,
    bottom: 140,
    child: _floatingMenuItems(l),
  ),

Positioned(
  right: 18,
  bottom: 72,
  child: _floatingLogoButton(),
),
          ],
        ),
      ),
    );
  }

  Widget _startUI(AppLocalizations l) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            
            const SizedBox(height: 22),
            _buildTitle(l),
            const SizedBox(height: 16),
            Text(l.startSubtitle, textAlign: TextAlign.center, style: const TextStyle(color: Colors.white70, fontSize: 15, height: 1.45)),
            const SizedBox(height: 32),
            _whiteButton(text: l.calculateButton, onPressed: _startCalculation),
            const SizedBox(height: 18),
            Text(l.oneTimeWarning, textAlign: TextAlign.center, style: const TextStyle(color: Colors.white38, fontSize: 12)),
          ],
        ),
      ),
    );
  }

  Widget _buildTitle(AppLocalizations l) {
  final parts = l.appTitle.split(':');

  if (parts.length > 1) {
    final first = parts.first.trim();
    final second = parts.sublist(1).join(':').trim();

    return Column(
      children: [
        Text(
          '$first:',
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Colors.white70,
            fontFamily: 'Orbitron',
            fontSize: 18, // 🔥 küçük üst başlık
            fontWeight: FontWeight.w600,
            letterSpacing: 2,
          ),
        ),
        const SizedBox(height: 6),
       GlitchText(
  second.toUpperCase(),
  style: const TextStyle(
    fontFamily: 'Orbitron',
    color: Colors.white,
    fontSize: 34,
    fontWeight: FontWeight.w900,
    letterSpacing: 4,
  ),
),
      ],
    );
  }

  // : yoksa normal göster
  return Text(
    l.appTitle,
    textAlign: TextAlign.center,
   style: const TextStyle(
  fontFamily: 'Orbitron', // EKLE
  color: Colors.white,
  fontSize: 38,
  fontWeight: FontWeight.w900,
  letterSpacing: 4,
),
  );
}





  Widget _calculatingUI(AppLocalizations l) {
    final minutes = _calculationLeft ~/ 60;
    final seconds = _calculationLeft % 60;

    return Padding(
      padding: const EdgeInsets.all(24),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
          const Icon(
  Icons.auto_awesome,
  color: Colors.white,
  size: 50,
),
const SizedBox(height: 20),
          
            GlitchText(
  l.calculatingTitle,
  style: const TextStyle(
    fontFamily: 'Orbitron',
    color: Colors.white,
    fontSize: 27,
    fontWeight: FontWeight.w800,
  ),
),
            const SizedBox(height: 14),
            Text(
  '${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}',
  style: const TextStyle(
    fontFamily: 'Orbitron',
    color: Colors.white,
    fontSize: 68,
    fontWeight: FontWeight.w900,
    letterSpacing: 2,
  ),
),
            const SizedBox(height: 10),
            Text(l.estimatedTime, textAlign: TextAlign.center, style: const TextStyle(color: Colors.white60)),
            const SizedBox(height: 18),
            _outlineButton(text: _rewardedAdReady ? l.fastCalculateButton : l.loadingAd, onPressed: _showRewardedAd),
            const SizedBox(height: 12),
            Text(l.rewardedAdInfo, textAlign: TextAlign.center, style: const TextStyle(color: Colors.white38, fontSize: 12)),
          ],
        ),
      ),
    );
  }

  Widget _resultUI(AppLocalizations l) {

 
//_scheduleIntroFinish();

    final years = _remainingLife.inDays ~/ 365;
    final days = _remainingLife.inDays % 365;
    final hours = _remainingLife.inHours % 24;
    final minutes = _remainingLife.inMinutes % 60;
    final seconds = _remainingLife.inSeconds % 60;

    return Center(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 22),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _bigTimeRow(years, l.years, 0),
            _bigTimeRow(days, l.days, 1),
            _bigTimeRow(hours, l.hours, 2),
            _bigTimeRow(minutes, l.minutes, 3),
            _bigTimeRow(seconds, l.seconds, 4),
          ],
        ),
      ),
    );
  }

  Widget _bigTimeRow(int value, String unit, int index) {
    const totalIntroMs = 3750;
final delay = index * 300;

final duration = Duration(milliseconds: totalIntroMs - delay);
    final upper = max(value, 1);



Widget number = _introAnimationDone
    ? GlitchText(
        value.toString().padLeft(2, '0'),
        style: _timeNumberStyle(),
      )
    : TweenAnimationBuilder<int>(
        tween: IntTween(begin: 0, end: upper),
        duration: duration,
        curve: Curves.easeOutCubic,
        builder: (_, animated, __) {
          final v = min(animated, value);

          return GlitchText(
            v.toString().padLeft(2, '0'),
            style: _timeNumberStyle(),
          );
        },
      );

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
  width: 200,
  child: Align(
    alignment: Alignment.centerRight,
    child: number,
  ),
),
          const SizedBox(width: 22),
          SizedBox(width: 85, child: Text(unit.toUpperCase(), style: const TextStyle(color: Colors.white, fontSize: 17, fontWeight: FontWeight.w600))),
        ],
      ),
    );
  }

  TextStyle _timeNumberStyle() {
    return const TextStyle(color: Colors.white, fontFamily: 'Orbitron', fontSize: 80, fontWeight: FontWeight.w900, height: .86, letterSpacing: -3);
  }

Widget _recalculateOfferUI(AppLocalizations l) {
  return Padding(
    padding: const EdgeInsets.all(24),
    child: Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(Icons.auto_awesome, color: Colors.white, size: 50),
          const SizedBox(height: 20),

         GlitchText(
  l.importantEvents,
  style: const TextStyle(
    fontFamily: 'Orbitron',
    color: Colors.white,
    fontSize: 27,
    fontWeight: FontWeight.w900,
    letterSpacing: 1,
  ),
),

          const SizedBox(height: 14),

          Text(
            l.recalculateDesc,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.white70,
              height: 1.5,
              fontSize: 14,
            ),
          ),

          const SizedBox(height: 30),

          _whiteButton(
            text: l.recalculateButton,
            onPressed: _startRecalculation,
          ),

          const SizedBox(height: 14),

          _outlineButton(
            text: _rewardedAdReady ? l.fastCalculateButton : l.loadingAd,
            onPressed: () => _showRewardedAd(recalculate: true),
          ),
        ],
      ),
    ),
  );
}

Widget _floatingLogoButton() {
  return GestureDetector(
    behavior: HitTestBehavior.opaque,
    onTap: () => setState(() => _menuOpen = !_menuOpen),
    child: Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        shape: BoxShape.circle, // 🔥 TAM DAİRE
        color: Colors.black.withOpacity(0.7), // arka hafif koyu
        border: Border.all(
          color: Colors.grey.withOpacity(0.35), // 🔥 ince premium çerçeve
          width: 1.5,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12), // 🔥 LOGO ORANI DÜZGÜN
        child: Image.asset(
          'assets/icon/logo.png',
          fit: BoxFit.contain, // 🔥 TAŞMAZ, TAM ORTADA
        ),
      ),
    ),
  );
}

Widget _loadingSplashUI() {
  return Container(
    color: Colors.black,
    alignment: Alignment.center,
    child: AnimatedBuilder(
      animation: _splashController,
      builder: (_, child) {
        final angle = sin(_splashController.value * pi * 2) * 0.08;

        return Transform.rotate(
          angle: angle,
          child: child,
        );
      },
      child: Image.asset(
        'assets/icon/logosplash4.png',
        width: 220,
      ),
    ),
  );
}


Widget _floatingMenuItems(AppLocalizations l) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.end,
    mainAxisSize: MainAxisSize.min,
    children: [
      _floatingItem(l.menuAbout, Icons.info_outline, () => _showAboutFullScreen(l)),
      _floatingItem(l.menuEvents, Icons.auto_awesome, () => _showEventsFullScreen(l)),
      _floatingItem(l.menuShare, Icons.ios_share, () => _showShareFullScreen(l)),
      _floatingItem(l.menuLanguage, Icons.language, () => _showLanguageFullScreen(l)),
    ],
  );
}

Widget _floatingItem(String text, IconData icon, VoidCallback onTap) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 10),
    child: Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(40),
        onTap: () {
          setState(() => _menuOpen = false);
          onTap();
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                text,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
fontWeight: FontWeight.w600,
letterSpacing: 0.5,
                 
                ),
              ),
              const SizedBox(width: 12),
              Container(
                width: 42,
                height: 42,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: Icon(icon, color: Colors.black, size: 20),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

  void _showFullScreenPanel({required String title, required Widget child}) {
    showGeneralDialog(
      context: context,
      barrierDismissible: false,
      barrierColor: Colors.black,
      pageBuilder: (_, __, ___) {
        return Scaffold(
          backgroundColor: Colors.black,
          body: SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 14, 8, 8),
                  child: Row(children: [Expanded(child: Text(title, style: const TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.w900))), IconButton(onPressed: () => Navigator.pop(context), icon: const Icon(Icons.close, color: Colors.white, size: 30))]),
                ),
                Expanded(child: child),
              ],
            ), 
          ),
        );
      },
    );
  }

void _showAboutFullScreen(AppLocalizations l) {
  _showFullScreenPanel(
    title: l.aboutTitle,
    child: ListView(
      padding: const EdgeInsets.all(24),
      children: [
        Text(
          l.aboutHeader,
          style: const TextStyle(
            color: Color(0xff83ff86),
            fontSize: 18,
            letterSpacing: 1.5,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 22),
        Text(l.aboutText1, style: const TextStyle(color: Colors.white70,  fontSize: 14, height: 1.55)),
        const SizedBox(height: 14),
        Text(l.aboutText2, style: const TextStyle(color: Colors.white70,  fontSize: 14, height: 1.55)),
        const SizedBox(height: 14),
        Text(l.aboutText3, style: const TextStyle(color: Colors.white70,  fontSize: 14, height: 1.55)),
      ],
    ),
  );
}

  void _showEventsModal() async => _showEventsFullScreen(AppLocalizations.of(context)!);

 void _showEventsFullScreen(AppLocalizations l) async {
  await _loadEvents();
  if (!mounted) return;

  _showFullScreenPanel(
    title: l.menuEvents,
    child: _events.isEmpty
        ? Center(child: Text(l.noEventYet, style: const TextStyle(color: Colors.white70)))
        : ListView.separated(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
            itemCount: _events.length,
            separatorBuilder: (_, __) => const SizedBox(height: 10),
            itemBuilder: (_, index) => _fateLine(_events[index]),
          ),
  );
}

String _formatDeltaFromMinutes(int minutes) {
  final negative = minutes < 0;
  int total = minutes.abs();

  final years = total ~/ (365 * 24 * 60);
  total %= 365 * 24 * 60;

  final months = total ~/ (30 * 24 * 60);
  total %= 30 * 24 * 60;

  final days = total ~/ (24 * 60);
  total %= 24 * 60;

  final hours = total ~/ 60;
  final mins = total % 60;

  final parts = <String>[];

  if (years > 0) parts.add('$years yıl');
  if (months > 0) parts.add('$months ay');
  if (days > 0) parts.add('$days gün');
  if (hours > 0) parts.add('$hours saat');
  if (mins > 0) parts.add('$mins dk');

  final text = parts.isEmpty ? '0 dk' : parts.join(' ');
  return '${negative ? '-' : '+'}$text';
}


 Widget _fateLine(Map<String, dynamic> e) {
  final int deltaMinutes = e['delta_minutes'] != null
      ? int.tryParse('${e['delta_minutes']}') ?? 0
      : (int.tryParse('${e['days_delta'] ?? 0}') ?? 0) * 1440;

  final bool plus = deltaMinutes >= 0;

  String dateText = '--.--.---- --:--';
  final createdAt = e['created_at'];

  if (createdAt is Timestamp) {
    final d = createdAt.toDate();
    dateText =
        '${d.day.toString().padLeft(2, '0')}.${d.month.toString().padLeft(2, '0')}.${d.year} '
        '${d.hour.toString().padLeft(2, '0')}:${d.minute.toString().padLeft(2, '0')}';
  }

  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 15),
    decoration: const BoxDecoration(
      border: Border(
        bottom: BorderSide(color: Color(0xff123018), width: 1),
      ),
    ),
    child: Row(
      children: [
        
        const SizedBox(width: 6),
        Expanded(
          child: Text(
            dateText,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              color: Color(0xff70ff7c),
              fontSize: 13,
              fontWeight: FontWeight.w800,
              letterSpacing: .4,
             
            ),
          ),
        ),
        
        Flexible(
          child: Text(
            _formatDeltaFromMinutes(deltaMinutes),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.right,
            style: TextStyle(
              color: plus ? const Color(0xff70ff7c) : const Color(0xffff5d5d),
              fontSize: 13,
              fontWeight: FontWeight.w900,
              
            ),
          ),
        ),
      ],
    ),
  );
}


void _showShareFullScreen(AppLocalizations l) {
  _showFullScreenPanel(
    title: l.shareTitle,
    child: Padding(
      padding: const EdgeInsets.all(22),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _whiteButton(
            text: l.shareImage,
            onPressed: _captureAndShareScreenshot,
          ),
          const SizedBox(height: 16),
          _outlineButton(
            text: l.shareText,
            onPressed: () {
              final appLink = Platform.isAndroid
                  ? 'https://play.google.com/store/apps/details?id=com.gerisayim.app'
                  : 'https://apps.apple.com/app/idXXXXXXXX'; // 🔥 iOS placeholder

              Share.share('${l.shareDefaultText}\n$appLink');
            },
          ),
        ],
      ),
    ),
  );
}

  Future<void> _captureAndShareScreenshot() async {
    try {
      final boundary = _shareKey.currentContext?.findRenderObject() as RenderRepaintBoundary?;
      if (boundary == null) return;
      final ui.Image image = await boundary.toImage(pixelRatio: 3);
      final ByteData? byteData = await image.toByteData(format: ui.ImageByteFormat.png);
      if (byteData == null) return;
      final Uint8List bytes = byteData.buffer.asUint8List();
      final dir = await getTemporaryDirectory();
      final file = File('${dir.path}/gerisayim_counter.png');
      await file.writeAsBytes(bytes);
     final l = AppLocalizations.of(context)!;
await Share.shareXFiles([XFile(file.path)], text: l.shareDefaultText);
    } catch (e) {
      debugPrint('Share screenshot error: $e');
    }
  }


void _showLanguageFullScreen(AppLocalizations l) {
  _showFullScreenPanel(
    title: l.menuLanguage,
    child: ListView(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
      children: [
        _languageTile('العربية', const Locale('ar')),
        _languageTile('Български', const Locale('bg')),
        _languageTile('বাংলা', const Locale('bn')),
        _languageTile('Català', const Locale('ca')),
        _languageTile('Čeština', const Locale('cs')),
        _languageTile('Dansk', const Locale('da')),
        _languageTile('Deutsch', const Locale('de')),
        _languageTile('Ελληνικά', const Locale('el')),
        _languageTile('English', const Locale('en')),
        _languageTile('Español', const Locale('es')),
        _languageTile('Eesti', const Locale('et')),
        _languageTile('Suomi', const Locale('fi')),
        _languageTile('Filipino', const Locale('fil')),
        _languageTile('Français', const Locale('fr')),
        _languageTile('ગુજરાતી', const Locale('gu')),
        _languageTile('עברית', const Locale('he')),
        _languageTile('हिन्दी', const Locale('hi')),
        _languageTile('Hrvatski', const Locale('hr')),
        _languageTile('Magyar', const Locale('hu')),
        _languageTile('Bahasa Indonesia', const Locale('id')),
        _languageTile('Italiano', const Locale('it')),
        _languageTile('日本語', const Locale('ja')),
        _languageTile('ಕನ್ನಡ', const Locale('kn')),
        _languageTile('한국어', const Locale('ko')),
        _languageTile('Lietuvių', const Locale('lt')),
        _languageTile('Latviešu', const Locale('lv')),
        _languageTile('മലയാളം', const Locale('ml')),
        _languageTile('मराठी', const Locale('mr')),
        _languageTile('Bahasa Melayu', const Locale('ms')),
        _languageTile('Nederlands', const Locale('nl')),
        _languageTile('Norsk', const Locale('no')),
        _languageTile('ਪੰਜਾਬੀ', const Locale('pa')),
        _languageTile('Polski', const Locale('pl')),
        _languageTile('Português', const Locale('pt')),
        _languageTile('Română', const Locale('ro')),
        _languageTile('Русский', const Locale('ru')),
        _languageTile('Slovenčina', const Locale('sk')),
        _languageTile('Slovenščina', const Locale('sl')),
        _languageTile('Svenska', const Locale('sv')),
        _languageTile('தமிழ்', const Locale('ta')),
        _languageTile('తెలుగు', const Locale('te')),
        _languageTile('ไทย', const Locale('th')),
        _languageTile('Türkçe', const Locale('tr')),
        _languageTile('Українська', const Locale('uk')),
        _languageTile('اردو', const Locale('ur')),
        _languageTile('Tiếng Việt', const Locale('vi')),
        _languageTile('中文', const Locale('zh')),
      ],
    ),
  );
}

  Widget _languageTile(String title, Locale locale) {
    return ListTile(
      title: Text(title, style: const TextStyle(color: Colors.white, fontSize: 20)),
      trailing: const Icon(Icons.chevron_right, color: Colors.white54),
      onTap: () {
        MyApp.setLocale(context, locale);
        Navigator.pop(context);
      },
    );
  }

  Widget _footer(AppLocalizations l) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(18, 4, 18, 10),
      child: Text(l.footerWarning, textAlign: TextAlign.center, style: const TextStyle(color: Colors.white24, fontSize: 10)),
    );
  }

  Widget _whiteButton({required String text, required VoidCallback onPressed}) {
    return SizedBox(width: double.infinity, height: 54, child: ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.white, foregroundColor: Colors.black, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14))), onPressed: onPressed, child: Text(text, textAlign: TextAlign.center, style: const TextStyle(fontWeight: FontWeight.w900))));
  }

  Widget _outlineButton({required String text, required VoidCallback onPressed}) {
    return SizedBox(width: double.infinity, height: 52, child: OutlinedButton(style: OutlinedButton.styleFrom(foregroundColor: Colors.white, side: const BorderSide(color: Colors.white), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14))), onPressed: onPressed, child: Text(text, textAlign: TextAlign.center)));
  }
}

class GlitchText extends StatefulWidget {
  final String text;
  final TextStyle style;

  const GlitchText(this.text, {super.key, required this.style});

  @override
  State<GlitchText> createState() => _GlitchTextState();
}

class _GlitchTextState extends State<GlitchText> {
  final Random _r = Random();
  Timer? _timer;

  double dx1 = 0;
  double dx2 = 0;

  @override
  void initState() {
    super.initState();

    _timer = Timer.periodic(const Duration(milliseconds: 90), (_) {
      if (!mounted) return;
      setState(() {
        dx1 = (_r.nextDouble() - 0.5) * 5;
        dx2 = (_r.nextDouble() - 0.5) * 5;
      });
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Transform.translate(
          offset: Offset(dx1, 0),
          child: Text(widget.text, textAlign: TextAlign.center, style: widget.style.copyWith(color: Colors.redAccent.withOpacity(0.75))),
        ),
        Transform.translate(
          offset: Offset(dx2, 0),
          child: Text(widget.text, textAlign: TextAlign.center, style: widget.style.copyWith(color: Colors.cyanAccent.withOpacity(0.75))),
        ),
        Text(widget.text, textAlign: TextAlign.center, style: widget.style),
      ],
    );
  }
}

class GlitchNumber extends StatefulWidget {
  final String text;
  final TextStyle style;

  const GlitchNumber(this.text, {super.key, required this.style});

  @override
  State<GlitchNumber> createState() => _GlitchNumberState();
}

class _GlitchNumberState extends State<GlitchNumber> {
  final Random _r = Random();
  Timer? _timer;

  double dx = 0;
  double dy = 0;

  @override
  void initState() {
    super.initState();

    _timer = Timer.periodic(const Duration(milliseconds: 140), (_) {
      if (!mounted) return;
      setState(() {
        dx = (_r.nextDouble() - 0.5) * 2;
        dy = (_r.nextDouble() - 0.5) * 1.5;
      });
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(dx, dy),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Transform.translate(
            offset: Offset(dx * 0.5, 0),
            child: Text(
              widget.text,
              textAlign: TextAlign.right,
              style: widget.style.copyWith(
                color: Colors.redAccent.withOpacity(0.6),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(-dx * 0.5, 0),
            child: Text(
              widget.text,
              textAlign: TextAlign.right,
              style: widget.style.copyWith(
                color: Colors.cyanAccent.withOpacity(0.6),
              ),
            ),
          ),
          Text(
            widget.text,
            textAlign: TextAlign.right,
            style: widget.style,
          ),
        ],
      ),
    );
  }
}