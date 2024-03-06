import 'package:bewell/file_exporter.dart';
part 'activity_viewmodel.dart';

class ActivityView extends StatefulWidget {
  const ActivityView({super.key});

  @override
  State<ActivityView> createState() => _ActivityViewState();
}

class _ActivityViewState extends State<ActivityView> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ActivityViewModel>.reactive(
        viewModelBuilder: () => ActivityViewModel(),
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
