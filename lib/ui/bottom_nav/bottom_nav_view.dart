import 'package:bewell/file_exporter.dart';
import 'package:flutter_svg/svg.dart';
part 'bottom_nav_view_model.dart';
part 'bottom_nav_view_components.dart';

class BottomNavView extends StatelessWidget {
  const BottomNavView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<BottomNavViewModel>.reactive(
        onViewModelReady: (model) => model.init(),
        viewModelBuilder: () => BottomNavViewModel(),
        builder: (context, model, child) {
          return Scaffold(
            body: PopScope(
              onPopInvoked: (canPop) {
                model.onPop;
              },
              child: model.getViewForCurrentIndex(model.currentIndex),
            ),
            bottomNavigationBar: Theme(
              data: Theme.of(context).copyWith(
                splashColor: Colors.transparent,
              ),
              child: BottomNavigationBar(
                elevation: 10,
                selectedFontSize: 2,
                unselectedFontSize: 0,
                enableFeedback: true,
                type: BottomNavigationBarType.fixed,
                backgroundColor: context.colorScheme.bottomNavBarBg,
                // selectedItemColor: Colors.amber,
                // unselectedItemColor: Colors.black54,
                currentIndex: model.currentIndex,
                onTap: (index) {
                  model.setIndex(index);
                  model.currentIndex;
                  model.notifyListeners();
                },
                items: const [
                  BottomNavigationBarItem(
                    activeIcon: BottomNavActiveIcon(
                      text: 'Progress',
                      icon: "assets/icons/navabr/progress.svg",
                    ),
                    tooltip: 'Progress',
                    icon: BottomNavInActiveIcon(
                      text: 'Progress',
                      icon: "assets/icons/navabr/progress.svg",
                    ),
                    label: '',
                  ),
                  BottomNavigationBarItem(
                    activeIcon: BottomNavActiveIcon(
                      text: 'Home',
                      icon: "assets/icons/navabr/home.svg",
                    ),
                    tooltip: 'Home',
                    icon: BottomNavInActiveIcon(
                      text: 'Home',
                      icon: "assets/icons/navabr/home.svg",
                    ),
                    label: '',
                  ),
                  BottomNavigationBarItem(
                    activeIcon: BottomNavActiveIcon(
                      text: 'Activity',
                      icon: "assets/icons/navabr/activity.svg",
                    ),
                    tooltip: 'Activity',
                    icon: BottomNavInActiveIcon(
                      text: 'Activity',
                      icon: "assets/icons/navabr/activity.svg",
                    ),
                    label: '',
                  ),
                  BottomNavigationBarItem(
                    activeIcon: BottomNavActiveIcon(
                      text: 'Profile',
                      icon: "assets/icons/navabr/profile.svg",
                    ),
                    tooltip: 'Profile',
                    icon: BottomNavInActiveIcon(
                      text: 'Profile',
                      icon: "assets/icons/navabr/profile.svg",
                    ),
                    label: '',
                  ),
                ],
              ),
            ),
          );
        });
  }
}
