import os

# Ayarlar
ANDROID_BASE_DIR = "android/app/src/main/res"
IOS_BASE_DIR = "ios/Runner" # Flutter/Native iOS proje yapısı için standarttır

names = {
    "": "Countdown: Death Timer",
    "en": "Countdown: Death Timer",
    "tr": "Geri Sayım: Ölüm Sayacı",
    "ar": "العد التنازلي: مؤقت الموت",
    "bg": "Обратно броене: Таймер на смъртта",
    "bn": "কাউন্টডাউন: মৃত্যু টাইমার",
    "ca": "Compte enrere: Temporitzador de mort",
    "cs": "Odpočítávání: Časovač smrti",
    "da": "Nedtælling: Dødstimer",
    "de": "Countdown: Todestimer",
    "el": "Αντίστροφη μέτρηση: Μετρητής θανάτου",
    "es": "Cuenta atrás: Temporizador de muerte",
    "et": "Loendur: Surmataimer",
    "fi": "Lähtölaskenta: Kuolema-ajastin",
    "fil": "Countdown: Death Timer",
    "fr": "Compte à rebours : Minuteur de mort",
    "gu": "કાઉન્ટડાઉન: મૃત્યુ ટાઈમર",
    "he": "ספירה לאחור: טיימר מוות",
    "hi": "काउंटडाउन: मृत्यु टाइमर",
    "hr": "Odbrojavanje: Brojač smrti",
    "hu": "Visszaszámlálás: Halálidőzítő",
    "id": "Hitung Mundur: Timer Kematian",
    "it": "Conto alla rovescia: Timer della morte",
    "ja": "カウントダウン：死のタイマー",
    "kn": "ಕೌಂಟ್‌ಡೌನ್: ಮರಣ ಟೈಮර්",
    "ko": "카운트다운: 죽음 타이머",
    "lt": "Atgalinis skaičiavimas: Mirties laikmatis",
    "lv": "Atpakaļskaitīšana: Nāves taimeris",
    "ml": "കൗണ്ട്ഡൗൺ: മരണ ടൈമർ",
    "mr": "काउंटडाउन: मृत्यू टाइमर",
    "ms": "Kira Detik: Pemasa Kematian",
    "nl": "Aftellen: Doodstimer",
    "no": "Nedtelling: Dødstimer",
    "pa": "ਕਾਊਂਟਡਾਊਨ: ਮੌਤ ਟਾਈਮਰ",
    "pl": "Odliczanie: Licznik śmierci",
    "pt": "Contagem regressiva: Temporizador da morte",
    "ro": "Numărătoare inversă: Cronometru al morții",
    "ru": "Обратный отсчет: Таймер смерти",
    "sk": "Odpočítavanie: Časovač smrti",
    "sl": "Odštevanje: Merilnik smrti",
    "sv": "Nedräkning: Dödstimer",
    "ta": "கவுண்ட்டவுன்: மரண டைமர்",
    "te": "కౌంట్‌డౌన్: మరణ టైమర్",
    "th": "นับถอยหลัง: ตัวจับเวลาความตาย",
    "uk": "Зворотний відлік: Таймер смерті",
    "ur": "کاؤنٹ ڈاؤن: موت کا ٹائمر",
    "vi": "Đếm ngược: Đồng hồ tử thần",
    "zh": "倒计时：死亡计时器",
    "zh-Hans": "倒计时：死亡计时器",
    "zh-Hant": "倒數計時：死亡計時器",
}

def clean_app_name(name):
    if ":" in name:
        return name.split(":", 1)[1].strip()
    if "：" in name:
        return name.split("：", 1)[1].strip()
    return name

def escape_xml(text):
    return text.replace("&", "&amp;").replace("<", "&lt;").replace(">", "&gt;").replace('"', '\\"').replace("'", "\\'")

# --- ANDROID İŞLEMİ ---
for lang, app_name in names.items():
    final_name = clean_app_name(app_name)
    
    # Android klasör isimlendirmesi
    folder_suffix = lang
    if lang == "zh-Hans": folder_suffix = "zh-rCN"
    elif lang == "zh-Hant": folder_suffix = "zh-rTW"
    elif lang == "": folder_suffix = ""

    folder = "values" if folder_suffix == "" else f"values-{folder_suffix}"
    path = os.path.join(ANDROID_BASE_DIR, folder)
    os.makedirs(path, exist_ok=True)

    with open(os.path.join(path, "strings.xml"), "w", encoding="utf-8") as f:
        f.write(f'<?xml version="1.0" encoding="utf-8"?>\n<resources>\n    <string name="app_name">{escape_xml(final_name)}</string>\n</resources>')

# --- iOS İŞLEMİ ---
for lang, app_name in names.items():
    if lang == "": continue # Varsayılan zaten 'en' içinde olacak
    final_name = clean_app_name(app_name)
    
    # iOS klasör yapısı (Örn: tr.lproj)
    ios_lang = lang
    if lang == "zh-Hans": ios_lang = "zh-Hans"
    elif lang == "zh-Hant": ios_lang = "zh-Hant"
    
    folder = f"{ios_lang}.lproj"
    path = os.path.join(IOS_BASE_DIR, folder)
    os.makedirs(path, exist_ok=True)

    # InfoPlist.strings dosyası (Uygulama adı burada saklanır)
    with open(os.path.join(path, "InfoPlist.strings"), "w", encoding="utf-16") as f:
        f.write(f'CFBundleDisplayName = "{final_name}";\n')
        f.write(f'CFBundleName = "{final_name}";\n')

print("Bitti! Hem Android hem iOS dosyaları oluşturuldu ve karakter sınırlaması uygulandı.")