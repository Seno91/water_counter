import 'package:shared_preferences/shared_preferences.dart';
import 'package:water_counter/repositories/database_repository.dart';

const prefsKey = "water_counter";

class SharedPreferences implements DatabaseRepository {
  final SharedPreferencesAsync prefs = SharedPreferencesAsync();

  @override
  Future<void> decrementCounter() async {
    int counter = await prefs.getInt(prefsKey) ?? 0;
    counter--;
    await prefs.setInt(prefsKey, counter);
  }

  @override
  Future<void> incrementCounter() async {
    int counter = await prefs.getInt(prefsKey) ?? 0;
    counter++;
    await prefs.setInt(prefsKey, counter);
  }

  @override
  Future<int> loadCounter() async {
    return await prefs.getInt(prefsKey) ?? 0;
  }

  @override
  Future<void> resetCounter() async {
    int counter = await prefs.getInt(prefsKey) ?? 0;
    counter = 0;
    await prefs.setInt(prefsKey, counter);
  }
}
