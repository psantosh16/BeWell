import 'package:bewell/file_exporter.dart';
part "progress_viewmodel.dart";

class ProgressView extends StatefulWidget {
  const ProgressView({super.key});

  @override
  State<ProgressView> createState() => _ProgressViewState();
}

class _ProgressViewState extends State<ProgressView> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ProgressViewModel>.reactive(
        viewModelBuilder: () => ProgressViewModel(),
        onViewModelReady: (model) {},
        onDispose: (viewModel) {},
        disposeViewModel: true,
        builder: (context, model, child) {
          return const Scaffold(
            body: SafeArea(
              child: Center(
                child: Text("Progress View"),
              ),
            ),
          );
        });
  }
}
