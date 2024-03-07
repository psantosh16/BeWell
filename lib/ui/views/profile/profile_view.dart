import 'package:bewell/file_exporter.dart';
import 'package:bewell/ui/theme/app_font.dart';
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
                padding: const EdgeInsets.symmetric(horizontal: 25.0).r,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    32.verticalSpace,
                    Center(
                      child: SizedBox(
                        width: 140.w,
                        height: 140.h,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(500).r,
                          child: Image.network(
                            "https://img.freepik.com/free-psd/3d-illustration-human-avatar-profile_23-2150671142.jpg",
                          ),
                        ),
                      ),
                    ),
                    12.verticalSpace,
                    Center(
                      child: Text(
                        model.userName,
                        style: FontThemeClass().title(context),
                      ),
                    ),
                    12.verticalSpace,
                    Text(
                      "Settings",
                      style: FontThemeClass().body(
                        context,
                        color: context.colorScheme.text,
                      ),
                    ),
                    12.verticalSpace,
                    Text(
                      "Others",
                      style: FontThemeClass().body(
                        context,
                        color: context.colorScheme.text,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
