import 'package:bewell/file_exporter.dart';
import 'package:bewell/ui/theme/app_font.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
part 'profile_viewmodel.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    final FontThemeClass fontTheme = FontThemeClass();
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
                            model.userImage,
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
                      "Dashboard",
                      style: FontThemeClass().body(
                        context,
                        color: context.colorScheme.text,
                      ),
                    ),
                    Column(
                      children: [
                        ListTile(
                          contentPadding: EdgeInsets.zero,
                          leading: ClipRRect(
                            child: Container(
                              width: 40.w,
                              height: 40.h,
                              decoration: BoxDecoration(
                                color: Colors.green.shade100,
                                borderRadius: BorderRadius.circular(500).r,
                              ),
                              child: const Icon(
                                Icons.payment_rounded,
                                color: Colors.green,
                              ),
                            ),
                          ),
                          title: const Text('Payment'),
                          trailing:
                              const Icon(Icons.arrow_forward_ios, size: 16),
                          onTap: () {},
                        ),
                        ListTile(
                          contentPadding: EdgeInsets.zero,
                          leading: ClipRRect(
                            child: Container(
                              width: 40.w,
                              height: 40.h,
                              decoration: BoxDecoration(
                                color: Colors.amber.shade100,
                                borderRadius: BorderRadius.circular(500).r,
                              ),
                              child: const Icon(
                                FontAwesomeIcons.trophy,
                                color: Colors.amber,
                                size: 18,
                              ),
                            ),
                          ),
                          title: const Text('Achievements'),
                          trailing:
                              const Icon(Icons.arrow_forward_ios, size: 16),
                          onTap: () {},
                        ),
                        ListTile(
                          contentPadding: EdgeInsets.zero,
                          leading: ClipRRect(
                            child: Container(
                              width: 40.w,
                              height: 40.h,
                              decoration: BoxDecoration(
                                color: Colors.grey.shade300,
                                borderRadius: BorderRadius.circular(500).r,
                              ),
                              child: const Icon(
                                FontAwesomeIcons.userShield,
                                size: 18,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                          title: const Text('Privacy'),
                          trailing:
                              const Icon(Icons.arrow_forward_ios, size: 16),
                          onTap: () {},
                        ),
                      ],
                    ),
                    12.verticalSpace,
                    Text(
                      "Others",
                      style: FontThemeClass().body(
                        context,
                        color: context.colorScheme.text,
                      ),
                    ),
                    Column(
                      children: [
                        ListTile(
                          contentPadding: EdgeInsets.zero,
                          leading: ClipRRect(
                            child: Container(
                              width: 40.w,
                              height: 40.h,
                              decoration: BoxDecoration(
                                color: Colors.grey.shade300,
                                borderRadius: BorderRadius.circular(500).r,
                              ),
                              child: const Icon(
                                FontAwesomeIcons.triangleExclamation,
                                size: 18,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                          title: const Text('Terms & Conditions'),
                          trailing:
                              const Icon(Icons.arrow_forward_ios, size: 16),
                          onTap: () {},
                        ),
                        ListTile(
                          contentPadding: EdgeInsets.zero,
                          leading: ClipRRect(
                            child: Container(
                              width: 40.w,
                              height: 40.h,
                              decoration: BoxDecoration(
                                color: Colors.grey.shade300,
                                borderRadius: BorderRadius.circular(500).r,
                              ),
                              child: const Icon(
                                FontAwesomeIcons.solidUser,
                                size: 18,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                          title: const Text('Account'),
                          trailing:
                              const Icon(Icons.arrow_forward_ios, size: 16),
                          onTap: () {},
                        ),
                      ],
                    ),
                    12.verticalSpace,
                    const Spacer(),
                    Center(
                      child: Text(
                        "Logout",
                        style: fontTheme.subTitle(
                          context,
                          color: Colors.red,
                        ),
                      ),
                    ),
                    56.verticalSpace,
                  ],
                ),
              ),
            ),
          );
        });
  }
}
