import 'package:bewell/file_exporter.dart';

extension ColorSchemeExtension on ColorScheme {
  // Text
  Color get black => const Color(0xFF000000);
  Color get white => const Color(0xFFFFFFFF);
  Color get darkGrey => const Color(0xFF8F90A6);
  Color get pink => const Color(0xFFE9DBFF);
  Color get lightGrey => black.withOpacity(0.5);
  Color get scaffoldGrey => const Color(0xFFF2F2F2);
  Color get grey => brightness == Brightness.dark
      ? white.withOpacity(0.6)
      : black.withOpacity(0.5);
  Color get text => brightness == Brightness.dark ? white : black;

  // Navigation Bar
  Color get bottomNavBarBg => brightness == Brightness.dark ? black : white;
  Color get unSelectedBottomNavIcon => const Color(0xFFA0A0A0);
  Color get selectedBottomNavIcon => primaryColor;
  Color get selectedBottomNavIconbg => primaryColor.withOpacity(0.4);

  // Other
  Color get primaryColor => const Color(0xFF379AF7);
  Color get scaffoldColor =>
      brightness == Brightness.dark ? const Color(0xFF111111) : scaffoldGrey;
  Color get iconColor => brightness == Brightness.dark
      ? const Color(0xFF333333)
      : const Color(0xFFE5E5E5);
  Color get cardColor => brightness == Brightness.dark ? black : white;
}
