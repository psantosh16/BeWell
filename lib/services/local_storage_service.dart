import 'package:bewell/file_exporter.dart';
import 'package:get_storage/get_storage.dart';

@lazySingleton
class LocalStorageService {
  final storage = GetStorage('BeWell');
  Future<bool> initStorage() async {
    final value = await GetStorage.init('BeWell');
    if (value) {
      debugPrint("🔥🔥🔥🔥Storage Initialized🔥🔥🔥🔥");
    }
    return value;
  }

  Future<void> write(String key, dynamic value) => storage.write(key, value);

  T? read<T>(String key) => storage.read<T>(key);

  Future<void> delete(String key) =>
      storage.remove(key); //removes the value associated with the key

  Future<void> clear() {
    debugPrint("🔥🔥🔥🔥Clearing Storage🔥🔥🔥🔥");
    return storage.erase();
  } //removes the current container
}
