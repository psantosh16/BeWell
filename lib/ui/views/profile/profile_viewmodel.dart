part of "profile_view.dart";

class ProfileViewModel extends BaseViewModel {
  final log = getLogger("ProfilePage");
  final String userName = "Omkar Date";
  String get counterLabel => 'Counter is: $_counter';

  int _counter = 0;

  void incrementCounter() {
    _counter++;
    rebuildUi();
  }
}
