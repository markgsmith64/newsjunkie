import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefKeys {
  SharedPrefKeys._();
  static const String languageCode = 'languageCode';
}

class LanguageSelectionService {
  static LanguageSelectionService? _instance;
  static SharedPreferences? _preferences;

  LanguageSelectionService._internal();

  static Future<LanguageSelectionService?> get instance async {
    if (_instance == null) {
      _instance = LanguageSelectionService._internal();
    }

    if (_preferences == null) {
      _preferences = await SharedPreferences.getInstance();
    }

    return _instance;
  }

  Future<void> setLanguage(String langCode) async =>
      await _preferences!.setString(SharedPrefKeys.languageCode, langCode);

  String? get languageCode =>
      _preferences!.getString(SharedPrefKeys.languageCode);
}
