
import Flutter
import UIKit
import UserNotifications

@main
@objc class AppDelegate: FlutterAppDelegate, FlutterImplicitEngineDelegate {

  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {

    // iPhone'u APNs'e kaydet
    application.registerForRemoteNotifications()

    // Uygulama açıldığında bildirim rozetini sıfırla
    clearBadge()

    // Flutter üzerinden rozet sıfırlama
    NotificationCenter.default.addObserver(
      self,
      selector: #selector(clearBadge),
      name: UIApplication.didBecomeActiveNotification,
      object: nil
    )

    return super.application(
      application,
      didFinishLaunchingWithOptions: launchOptions
    )
  }

  @objc private func clearBadge() {
    if #available(iOS 16.0, *) {
      UNUserNotificationCenter.current().setBadgeCount(0)
    } else {
      UIApplication.shared.applicationIconBadgeNumber = 0
    }
  }

  func didInitializeImplicitFlutterEngine(_ engineBridge: FlutterImplicitEngineBridge) {
    GeneratedPluginRegistrant.register(with: engineBridge.pluginRegistry)
  }
}
