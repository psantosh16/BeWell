import 'package:bewell/ui/bottom_nav/bottom_nav_view.dart';
import 'package:bewell/ui/bottom_sheets/notice/notice_sheet.dart';
import 'package:bewell/ui/dialogs/info_alert/info_alert_dialog.dart';
import 'package:bewell/ui/views/home/home_view.dart';
import 'package:bewell/ui/views/profile/profile_view.dart';
import 'package:bewell/ui/views/startup/startup_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
// @stacked-import

@StackedApp(
  routes: [
    MaterialRoute(page: HomeView),
    MaterialRoute(page: StartupView),
    MaterialRoute(page: BottomNavView),
    MaterialRoute(page: ProfileView),
    // @stacked-route
  ],
  dependencies: [
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: NavigationService),
    // @stacked-service
  ],
  bottomsheets: [
    StackedBottomsheet(classType: NoticeSheet),
    // @stacked-bottom-sheet
  ],
  dialogs: [
    StackedDialog(classType: InfoAlertDialog),
    // @stacked-dialog
  ],
)
class App {}


//dart run build_runner build --delete-conflicting-outputs
