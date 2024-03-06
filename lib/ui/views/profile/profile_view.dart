import 'package:bewell/file_exporter.dart';
part 'profile_viewmodel.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ProfileViewModel>.reactive(
        viewModelBuilder: () => ProfileViewModel(),
        onViewModelReady: (model) {},
        onDispose: (viewModel) {},
        disposeViewModel: true,
        builder: (context, model, child) {
          return Scaffold(
            body: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          const Text(
                            'Hello, STACKED!',
                            style: TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          MaterialButton(
                            color: Colors.black,
                            onPressed: model.incrementCounter,
                            child: Text(
                              model.counterLabel,
                              style: const TextStyle(color: Colors.white),
                            ),
                          ),
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
