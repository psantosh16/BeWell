import 'package:bewell/file_exporter.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
                currentIndex: model.currentIndex,
                onTap: (index) {
                  model.setIndex(index);
                  model.currentIndex;
                  model.notifyListeners();
                },
                items: const [
                  BottomNavigationBarItem(
                    activeIcon: BottomNavActiveIcon(
                      text: 'Home',
                      icon: Icons.home,
                    ),
                    tooltip: 'Home',
                    icon: BottomNavInActiveIcon(
                      text: 'Home',
                      icon: Icons.home,
                    ),
                    label: '',
                  ),
                  BottomNavigationBarItem(
                    activeIcon: BottomNavActiveIcon(
                      text: 'Progress',
                      icon: FontAwesomeIcons.chartSimple,
                    ),
                    tooltip: 'Progress',
                    icon: BottomNavInActiveIcon(
                      text: 'Progress',
                      icon: FontAwesomeIcons.chartSimple,
                    ),
                    label: '',
                  ),
                  BottomNavigationBarItem(
                    activeIcon: BottomNavActiveIcon(
                      text: 'Activity',
                      icon: FontAwesomeIcons.personRunning,
                    ),
                    tooltip: 'Activity',
                    icon: BottomNavInActiveIcon(
                      text: 'Activity',
                      icon: FontAwesomeIcons.personRunning,
                    ),
                    label: '',
                  ),
                  BottomNavigationBarItem(
                    activeIcon: BottomNavActiveIcon(
                      text: 'Profile',
                      icon: Icons.person,
                    ),
                    tooltip: 'Profile',
                    icon: BottomNavInActiveIcon(
                      text: 'Profile',
                      icon: Icons.person,
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
