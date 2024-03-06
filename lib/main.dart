import 'package:bewell/file_exporter.dart';

Future<void> servicesToInitializeBeforeAppStart() async {
  WidgetsFlutterBinding.ensureInitialized();
  try {
    // await Firebase.initializeApp(
    //   options: DefaultFirebaseOptions.currentPlatform,
    // );

    // await FirebaseAnalytics.instance.setAnalyticsCollectionEnabled(true);

    // NotificationsService notificationsService = NotificationsService();
    // FirebaseMessaging.onBackgroundMessage(firebaseMessagingBackgroundHandler);
    // notificationsService.onForegroundMessage();
    // notificationsService.onBackgroundMessage();
    setupLocator();
    await Future.wait([
      locator<LocalStorageService>().initStorage(),
    ]);
  } on Exception catch (e) {
    debugPrint("Error in servicesToInitializeBeforeAppStart : ${e.toString()}");
  }
}

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupLocator();
  setupDialogUi();
  setupBottomSheetUi();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeService = locator<ThemeService>();

    return ScreenUtilInit(
      designSize: const Size(430, 932),
      splitScreenMode: true,
      minTextAdapt: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "BeWell",
        initialRoute: Routes.startupView,
        theme: ThemeData(
          textTheme: const TextTheme(),
          primaryColor: context.colorScheme.primaryColor,
          brightness: themeService.brightness,
          scaffoldBackgroundColor: context.colorScheme.scaffoldColor,
          appBarTheme: AppBarTheme(
            elevation: 0,
            backgroundColor: context.colorScheme.scaffoldColor,
            foregroundColor: context.colorScheme.text,
          ),
        ),
        onGenerateRoute: StackedRouter().onGenerateRoute,
        navigatorKey: StackedService.navigatorKey,
        navigatorObservers: [
          StackedService.routeObserver,
        ],
      ),
    );
  }
}
