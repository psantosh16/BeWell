import 'package:bewell/file_exporter.dart';
import 'package:bewell/ui/theme/app_font.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
part 'home_viewmodel.dart';
part 'home_view_components.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
        viewModelBuilder: () => HomeViewModel(),
        onViewModelReady: (model) => model.init(),
        onDispose: (viewModel) => viewModel.disposeView(),
        disposeViewModel: true,
        builder: (context, model, child) {
          // final FontThemeClass fontTheme = FontThemeClass();
          return Scaffold(
            backgroundColor: Colors.white,
            body: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0).r,
                child: SingleChildScrollView(
                  physics: const AlwaysScrollableScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      20.verticalSpace,
                      const UserGreetings(),
                      20.verticalSpace,
                      const HomeSectionDivider(
                        title: "Take Your Test",

                      ),
                      10.verticalSpace,
                      SizedBox(
                        height: 240.h,
                        child: ListView.builder(
                            physics: const BouncingScrollPhysics(),
                            itemCount: model.tests.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return HomeTestCard(
                                text: model.tests[index].text,
                                image: model.tests[index].image,
                              );
                            }),
                      ),
                      20.verticalSpace,
                      const HomeSectionDivider(
                        title: "Mindful tracker",
                      ),
                      const MindfulTrackerCard(
                        imagePath: "assets/home/sleepy.png",
                        title: "Sleep Quality",
                        subtitle: "7.00 Hrs",
                        actionButton: true,
                        backgroundColor: Color(0x59A18FFF),
                      ),
                      const MindfulTrackerCard(
                        imagePath: "assets/home/book.png",
                        title: "Mindful Journal",
                        subtitle: "64 Days Streak",
                        actionButton: false,
                        backgroundColor: Color(0x59A18FFF),
                      ),
                      const MindfulTrackerCard(
                        imagePath: "assets/home/Disappointed.png",
                        title: "Stress Level",
                        subtitle: "It's Normal",
                        actionButton: false,
                        backgroundColor: Color(0x59A18FFF),
                      ),
                      const MindfulTrackerCard(
                        imagePath: "assets/home/headphone.png",
                        title: "Mood Tracker",
                        subtitle: "neutral",
                        actionButton: false,
                        backgroundColor: Color(0x59A18FFF),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const HomeSectionDivider(
                        title: "Mindful AI",
                      ),
                      const MindfulAiCard()
                    ],
                  ),
                ),
              ),
            ),
          );
        });
  }
}
