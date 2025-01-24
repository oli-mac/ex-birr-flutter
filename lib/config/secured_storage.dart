import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecuredStorage {
  final storage = const FlutterSecureStorage();
  Future<void> saveThemeMode(String themeMode) async {
    await storage.write(key: "themeMode", value: themeMode);
  }

  Future<String?> getThemeMode() async {
    return await storage.read(key: "themeMode");
  }
}