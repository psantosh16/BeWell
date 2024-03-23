part of "profile_view.dart";

class ProfileViewModel extends BaseViewModel {
  final log = getLogger("ProfilePage");
  final String userName = "Hemant Sakunde";
  final String userImage =
      "https://img.freepik.com/free-psd/3d-illustration-human-avatar-profile_23-2150671142.jpg";
  String get counterLabel => 'Counter is: $_counter';

  int _counter = 0;

  void incrementCounter() {
    _counter++;
    rebuildUi();
  }
}
