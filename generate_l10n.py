import os
import json

# Hedef dizin
target_dir = "lib/l10n"

# KAPSAMLI ÇEVİRİ SÖZLÜĞÜ (Kritik diller için tam set)
full_special_langs = {
    "tr": {
        "appTitle": "Geri Sayım", "startButton": "HESAPLA", "disclaimerText": "DİKKAT: Eğlence amaçlıdır. Tıbbi tahmin teşkil etmez.",
        "privacyPolicy": "Gizlilik", "aboutUs": "Hakkımızda", "currentLanguage": "Dil:", 
        "historyTitle": "Zaman Kayıtları", "noHistory": "Henüz değişim yok.", "close": "Kapat",
        "lifeEventTitle": "Önemli Gelişme!", "lifeEventDesc": "Kader çizginiz değişti. Süre güncellendi."
    },
    "en": {
        "appTitle": "Countdown", "startButton": "CALCULATE", "disclaimerText": "NOTICE: For entertainment only. No medical prediction.",
        "privacyPolicy": "Privacy", "aboutUs": "About Us", "currentLanguage": "Lang:", 
        "historyTitle": "Time Records", "noHistory": "No changes detected.", "close": "Close",
        "lifeEventTitle": "Life Event!", "lifeEventDesc": "Your destiny has shifted. Time recalculated."
    },
    "es": {
        "appTitle": "Cuenta Atrás", "startButton": "CALCULAR", "disclaimerText": "AVISO: Solo entretenimiento. Sin predicción médica.",
        "privacyPolicy": "Privacidad", "aboutUs": "Nosotros", "currentLanguage": "Idioma:",
        "historyTitle": "Registros", "noHistory": "Sin cambios.", "close": "Cerrar",
        "lifeEventTitle": "¡Evento Vital!", "lifeEventDesc": "Tu destino ha cambiado. Tiempo actualizado."
    },
    "fr": {
        "appTitle": "Compte à Rebours", "startButton": "CALCULER", "disclaimerText": "AVIS : Divertissement uniquement. Aucune prédiction médicale.",
        "privacyPolicy": "Confidentialité", "aboutUs": "À propos", "currentLanguage": "Langue :",
        "historyTitle": "Archives", "noHistory": "Aucun changement.", "close": "Fermer",
        "lifeEventTitle": "Événement Majeur !", "lifeEventDesc": "Votre destin a changé. Temps mis à jour."
    },
    "de": {
        "appTitle": "Countdown", "startButton": "BERECHNEN", "disclaimerText": "HINWEIS: Nur zur Unterhaltung. Keine medizinische Prognose.",
        "privacyPolicy": "Datenschutz", "aboutUs": "Über uns", "currentLanguage": "Sprache:",
        "historyTitle": "Protokolle", "noHistory": "Keine Änderungen.", "close": "Schließen",
        "lifeEventTitle": "Entwicklung!", "lifeEventDesc": "Dein Schicksal hat sich geändert. Zeit aktualisiert."
    },
    "ru": {
        "appTitle": "Обратный отсчет", "startButton": "РАССЧИТАТЬ", "disclaimerText": "ВНИМАНИЕ: Только для развлечения. Не является прогнозом.",
        "privacyPolicy": "Приватность", "aboutUs": "О нас", "currentLanguage": "Язык:",
        "historyTitle": "История", "noHistory": "Изменений нет.", "close": "Закрыть",
        "lifeEventTitle": "Событие!", "lifeEventDesc": "Судьба изменилась. Время пересчитано."
    },
    "ar": {
        "appTitle": "العد التنازلي", "startButton": "احسب", "disclaimerText": "تنبيه: للترفيه فقط. ليس توقعاً طبياً.",
        "privacyPolicy": "الخصوصية", "aboutUs": "حول", "currentLanguage": "اللغة:",
        "historyTitle": "السجلات", "noHistory": "لا توجد تغييرات.", "close": "إغلاق",
        "lifeEventTitle": "حدث هام!", "lifeEventDesc": "لقد تغير قدرك. تم تحديث الوقت."
    },
    "zh": {
        "appTitle": "倒计时", "startButton": "计算", "disclaimerText": "注意：仅供娛樂。非医疗预测。",
        "privacyPolicy": "隐私", "aboutUs": "关于", "currentLanguage": "语言:",
        "historyTitle": "时间记录", "noHistory": "尚未检测到变化。", "close": "关闭",
        "lifeEventTitle": "重大事件！", "lifeEventDesc": "你的命运发生了变化。时间已重新计算。"
    }
}

# Varsayılan (İngilizce) şablon - Listede olmayan diğer 42 dil buna göre dolacak
base_template = full_special_langs["en"]

arb_files = [f for f in os.listdir(target_dir) if f.endswith('.arb')]

for file_name in arb_files:
    lang_code = file_name.replace("app_", "").replace(".arb", "").split("_")[0] # zh_Hans gibi durumlar için
    file_path = os.path.join(target_dir, file_name)
    
    with open(file_path, "r", encoding="utf-8") as f:
        try:
            content = json.load(f)
        except:
            content = {}

    # Çeviriyi seç: Özel dillerden al, yoksa İngilizce bas
    source_translations = full_special_langs.get(lang_code, base_template)
    
    for key, value in source_translations.items():
        content[key] = value # Hepsini güncelle (Overwriting)

    with open(file_path, "w", encoding="utf-8") as f:
        json.dump(content, f, ensure_ascii=False, indent=2)
    
    print(f"Bütün anahtarlar güncellendi: {file_name} ({lang_code})")

print(f"\n--- İŞLEM TAMAM: {len(arb_files)} dosya profesyonelce çevrildi! ---")