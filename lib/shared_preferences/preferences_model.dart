import 'package:matule/share/root_store.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PreferencesModel {
  final _storage = SharedPreferences.getInstance();

  Future<void> readName() async {
    final storage = await _storage;
    final name = storage.getString('name_key');
  }

  Future<void> readLastName() async {
    final storage = await _storage;
    storage.setString('key', RootStore().profileDetails.name);
  }
}
