part of "activity_view.dart";

class ActivityViewModel extends BaseViewModel {
  final log = getLogger("ActivityPage");

  String get counterLabel => 'Counter is: $_counter';

  int _counter = 0;

  void incrementCounter() {
    _counter++;
    rebuildUi();
  }
}
