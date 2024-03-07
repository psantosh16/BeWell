part of 'bottom_nav_view.dart';

class BottomNavViewModel extends IndexTrackingViewModel {
  void init() {
    setIndex(0);
  }

  Future<bool> onPop() async {
    return false;
  }

  Widget getViewForCurrentIndex(int index) {
    switch (index) {
      case 0:
        return const HomeView();
      case 1:
        return const ProgressView();
      case 2:
        return const ActivityView();
      case 3:
        return const ProfileView();
      default:
        return const HomeView();
    }
  }
}
