import 'package:bewell/file_exporter.dart';
import 'package:bewell/ui/views/home/home_view_components.dart';
part 'home_viewmodel.dart';

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
          return const Scaffold(
            backgroundColor: Colors.white,
            body: SafeArea(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0),
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          MindfulTrackerCard(
                            imagePath: "assets/home/sleepy.png",
                            title: "Sleep Quality",
                            subtitle: "7.00 Hrs",
                            actionButton: true,
                            backgroundColor: Color(0x59A18FFF),
                          ),
                          MindfulTrackerCard(
                            imagePath: "assets/home/book.png",
                            title: "Mindful Journal",
                            subtitle: "64 Days Streak",
                            actionButton: false,
                            backgroundColor: Color(0x59A18FFF),
                          ),
                          MindfulTrackerCard(
                            imagePath: "assets/home/Disappointed.png",
                            title: "Stress Level",
                            subtitle: "It's Normal",
                            actionButton: false,
                            backgroundColor: Color(0x59A18FFF),
                          ),
                          MindfulTrackerCard(
                            imagePath: "assets/home/headphone.png",
                            title: "Mood Tracker",
                            subtitle: "neutral",
                            actionButton: false,
                            backgroundColor: Color(0x59A18FFF),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          MindfulAiCard()
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        });
  }
}
