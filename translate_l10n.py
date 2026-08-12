import os
import json
import time
from deep_translator import GoogleTranslator

target_dir = "lib/l10n"

base_tr = {
    "@@locale": "tr",
    "appTitle": "Geri Sayım: Ölüm Sayacı",
    "appTitleShort": "Ölüm Sayacı",
    "notificationPermissionTitle": "Bildirimlere izin ver",
    "notificationPermissionText": "Hayatındaki önemli olayları, kader ve zaman değişimlerini bildirim olarak almak ister misin?",
    "notificationPermissionYes": "Evet",
    "notificationPermissionNo": "Hayır",
    "loading": "Yükleniyor...",
    "startSubtitle": "Tahmini yaşam sayacınızı yalnızca bir kez hesaplayabilirsiniz.",
    "calculateButton": "HESAPLA",
    "oneTimeWarning": "Sonuç bir kez oluşturulur ve güvenli şekilde kaydedilir.",
    "calculatingTitle": "Hesaplanıyor",
    "estimatedTime": "Tahminden Daha Uzun Sürebilir",
    "fastCalculateButton": "Kısa video izleyerek hızlı hesapla",
    "loadingAd": "Video hazırlanıyor...",
    "rewardedAdInfo": "Video izlemek hesaplama süresini atlamanızı sağlar.",
    "adNotReady": "Video henüz hazır değil. Lütfen tekrar deneyin.",
    "resultTitle": "KALAN SÜRE",
    "years": "YIL",
    "days": "GÜN",
    "months": "AY",
    "hours": "SAAT",
    "minutes": "DAKİKA",
    "seconds": "SANİYE",
    "importantEvents": "Önemli Gelişmeler",
    "importantEvent": "Önemli gelişme",
    "noEvents": "Henüz önemli bir gelişme yok.",
    "lockedResultWarning": "Bu sonuç tekrar hesaplanamaz. Uygulama silinse bile aynı kayıt kullanılır.",
    "language": "Dil",
    "disclaimerTitle": "Uyarı",
    "disclaimerText": "Bu uygulama yalnızca eğlence amaçlıdır. Sağlık, ölüm tarihi, yaşam süresi veya gelecek hakkında gerçek bir tahmin sunmaz.",
    "footerWarning": "Eğlence amaçlıdır. Gerçek sağlık veya yaşam tahmini değildir.",
    "ok": "Tamam",
    "eventPositiveTitle": "Hayatınızda önemli bir gelişme oldu",
    "eventPositiveDescription": "Sisteme göre yaşam sürenize olumlu bir etki işlendi.",
    "eventNegativeTitle": "Hayatınızda önemli bir gelişme oldu",
    "eventNegativeDescription": "Sisteme göre yaşam sürenize olumsuz bir etki işlendi.",
    "aboutTitle": "Hakkında",
    "aboutHeader": "GERİ SAYIM SİSTEMİ // SON DOSYA",
    "aboutText1": "Bu uygulama yalnızca eğlence amaçlıdır. Gerçek yaşam süresi, ölüm tarihi, sağlık durumu veya gelecek hakkında kesin bilgi sunmaz.",
    "aboutText2": "Sonuçlar kurgusal ve rastgele hesaplanır. Tıbbi, psikolojik, hukuki veya finansal tavsiye değildir.",
    "aboutText3": "Eğer içerik sizi rahatsız ederse uygulamayı kullanmayı bırakın.",
    "shareTitle": "Ekranı Paylaş",
    "shareImage": "Sayaç Ekran Görüntüsünü Paylaş",
    "shareText": "Uygulamayı Link Olarak Paylaş",
    "shareDefaultText": "Ölüm sayacımı gördüm. Sen de gör.",
    "menuAbout": "Hakkında",
    "menuEvents": "Kader Değişimleri",
    "menuShare": "Ekranı Paylaş",
    "menuLanguage": "Dil Değiştir",
    "recalculateTitle": "Önemli Gelişmeler",
    "recalculateDesc": "Kaderinde yeni bir iz belirdi. Kalan süren tekrar hesaplanmalı.",
    "recalculateButton": "TEKRAR HESAPLA",
    "noEventYet": "Henüz kader değişimi yok.",
    "surveyTitle": "RİSK VE YAŞAM ANALİZİ",
    "surveyStepText": "ANALİZ {step} / 4",
    "surveyNextButton": "DEVAM ET",
    "surveyCalculateButton": "KADERİ HESAPLA",
    "surveyQ1Title": "UYKU DÜZENİ",
    "surveyQ1Desc": "Günde ortalama kaç saat uyuyorsunuz?",
    "surveyQ1Unit": "{hours} SAAT",
    "surveyQ2Title": "ZARARLI ALIŞKANLIKLAR",
    "surveyQ2Desc": "Düzenli tütün, alkol veya yoğun kafein tüketiyor musunuz?",
    "surveyQ2OptionYes": "EVET",
    "surveyQ2OptionNo": "HAYIR",
    "surveyQ3Title": "STRES VE ANKSİYETE",
    "surveyQ3Desc": "Günlük stres seviyenizi derecelendirin (1 - 10):",
    "surveyQ3Unit": "SEVİYE {level}",
    "surveyQ4Title": "FİZİKSEL AKTİVİTE",
    "surveyQ4Desc": "Haftada kaç gün egzersiz yapıyorsunuz?",
    "surveyQ4Unit": "{days} GÜN",
}

# Google Translate metni çevirirken süslü parantez içindeki
# placeholder isimlerini (step, hours, level, days) de çevirmeye/
# bozmaya çalışabiliyor. Bu anahtarları çeviriye göndermeden önce
# placeholder'ı geçici bir token ile değiştirip, çeviri bittikten
# sonra orijinal placeholder'ı geri koyuyoruz. Böylece örn.
# "ANALİZ {step} / 4" çevrildiğinde parantez içi bozulmuyor.
PLACEHOLDER_KEYS = {
    "surveyStepText": "step",
    "surveyQ1Unit": "hours",
    "surveyQ3Unit": "level",
    "surveyQ4Unit": "days",
}

manual_keep = {
    "tr": base_tr
}


def flutter_lang_to_google(code):
    code = code.replace("_", "-")
    if code == "zh-Hans":
        return "zh-CN"
    if code == "zh-Hant":
        return "zh-TW"
    return code.split("-")[0]


def translate_text(key, text, google_lang):
    """Placeholder içeren anahtarları koruyarak çevirir."""
    placeholder_name = PLACEHOLDER_KEYS.get(key)

    if placeholder_name:
        token = "XPLACEHOLDERX"
        original_placeholder = "{" + placeholder_name + "}"
        safe_text = text.replace(original_placeholder, token)

        translated = GoogleTranslator(
            source="tr",
            target=google_lang
        ).translate(safe_text)

        # Google Translate token'ı büyük/küçük harf değiştirebiliyor,
        # bu yüzden case-insensitive geri değiştiriyoruz.
        translated = translated.replace(token, original_placeholder)
        translated = translated.replace(token.lower(), original_placeholder)
        translated = translated.replace(token.capitalize(), original_placeholder)

        return translated

    return GoogleTranslator(
        source="tr",
        target=google_lang
    ).translate(text)


arb_files = [f for f in os.listdir(target_dir) if f.endswith(".arb")]

for file_name in arb_files:
    file_path = os.path.join(target_dir, file_name)
    locale = file_name.replace("app_", "").replace(".arb", "")
    google_lang = flutter_lang_to_google(locale)

    print(f"İşleniyor: {file_name} -> {google_lang}")

    if locale == "tr":
        content = base_tr.copy()
    else:
        content = {"@@locale": locale}

        for key, text in base_tr.items():
            if key.startswith("@") or key == "@@locale":
                continue

            try:
                translated = translate_text(key, text, google_lang)
                content[key] = translated
                time.sleep(0.15)

            except Exception as e:
                print(f"Hata: {locale} / {key} -> {e}")
                content[key] = text

    with open(file_path, "w", encoding="utf-8") as f:
        json.dump(content, f, ensure_ascii=False, indent=2)

print("Tüm ARB dosyaları güncellendi.")
print(
    "NOT: surveyStepText / surveyQ1Unit / surveyQ3Unit / surveyQ4Unit "
    "gibi {placeholder} içeren satırları çeviri sonrası gözle kontrol et — "
    "otomatik çeviri servisleri parantez içi isimleri bazen bozabiliyor."
)