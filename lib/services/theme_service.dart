import 'package:bewell/file_exporter.dart';
import 'package:bewell/services/local_storage_service.dart';

@lazySingleton
class ThemeService {
  static const String key = "isDark";

  static final localStorage = locator<LocalStorageService>();

  final ValueNotifier<bool> brightnessListner =
      ValueNotifier(localStorage.read<bool>(key) ?? false);

  Brightness get brightness =>
      brightnessListner.value ? Brightness.dark : Brightness.light;

  void updateTheme() {
    brightnessListner.value = !brightnessListner.value;
    localStorage.write(key, brightnessListner.value);
  }
}
