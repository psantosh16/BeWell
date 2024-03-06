import 'package:bewell/file_exporter.dart';
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
                backgroundColor: Colors.blue,
                selectedItemColor: Colors.amber,
                unselectedItemColor: Colors.black54,
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
                      icon: "",
                    ),
                    tooltip: 'Progress',
                    icon: BottomNavInActiveIcon(
                      text: 'Progress',
                      icon: "",
                    ),
                    label: '',
                  ),
                  BottomNavigationBarItem(
                    activeIcon: BottomNavActiveIcon(
                      text: 'Home',
                      icon: "",
                    ),
                    tooltip: 'Home',
                    icon: BottomNavInActiveIcon(
                      text: 'Home',
                      icon: "",
                    ),
                    label: '',
                  ),
                  BottomNavigationBarItem(
                    activeIcon: BottomNavActiveIcon(
                      text: 'Activity',
                      icon: "",
                    ),
                    tooltip: 'Activity',
                    icon: BottomNavInActiveIcon(
                      text: 'Activity',
                      icon: "",
                    ),
                    label: '',
                  ),
                  BottomNavigationBarItem(
                    activeIcon: BottomNavActiveIcon(
                      text: 'Profile',
                      icon: "",
                    ),
                    tooltip: 'Profile',
                    icon: BottomNavInActiveIcon(
                      text: 'Profile',
                      icon: "",
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
