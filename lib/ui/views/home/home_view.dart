import 'package:bewell/file_exporter.dart';
import 'package:bewell/ui/theme/app_font.dart';
import 'package:bewell/ui/views/home/home_view_components.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
          final FontThemeClass fontTheme = FontThemeClass();
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
                      Row(
                        children: [
                          const CheckBadge(),
                          8.horizontalSpace,
                          Text(
                            "Take your test",
                            style: fontTheme.subTitle(
                              context,
                              color: context.colorScheme.grey,
                            ),
                          ),
                        ],
                      ),
                      10.verticalSpace,
                      SizedBox(
                        height: 220.h,
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
                      const HomeSectionHeading(
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
                      const HomeSectionHeading(title: "Mindful ai"),
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

class CheckBadge extends StatelessWidget {
  const CheckBadge({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Icon(
          FontAwesomeIcons.certificate,
          color: Colors.amber.shade800,
        ),
        const Icon(
          FontAwesomeIcons.check,
          color: Colors.white,
          size: 12,
        ),
      ],
    );
  }
}

class UserGreetings extends StatelessWidget {
  const UserGreetings({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: ClipRRect(
          borderRadius: BorderRadius.circular(200).r,
          child: Image.network("https://picsum.photos/200")),
      title: Text(
        "Good Morning,",
        style: FontThemeClass().title(context),
      ),
      subtitle: Text(
        "Hemant Sakunde",
        style: FontThemeClass().subTitle(context),
      ),
    );
  }
}

class HomeTestCard extends StatelessWidget {
  final String image;
  final String text;
  const HomeTestCard({super.key, required this.image, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280.w,
      height: 220.h,
      margin: EdgeInsets.only(right: 20.w),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12).r,
            child: Image.network(
              image,
              fit: BoxFit.cover,
              height: 185.h,
              width: 280.w,
            ),
          ),
          12.verticalSpace,
          Text(text),
        ],
      ),
    );
  }
}
