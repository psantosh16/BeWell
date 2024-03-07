import 'package:bewell/file_exporter.dart';

class FontThemeClass {
  TextStyle header(BuildContext context,
      {Color? color, FontWeight? fontWeight}) {
    return TextStyle(
      fontSize: 34.sp,
      fontFamily: 'Gilroy',
      fontWeight: fontWeight ?? FontWeight.w700,
      color: color ?? context.colorScheme.text,
    );
  }

  TextStyle title(BuildContext context,
      {Color? color, FontWeight? fontWeight}) {
    return TextStyle(
      fontSize: 24.sp,
      fontFamily: 'Gilroy',
      fontWeight: fontWeight ?? FontWeight.w500,
      color: color ?? context.colorScheme.text,
    );
  }

  TextStyle title2(BuildContext context,
      {Color? color, FontWeight? fontWeight}) {
    return TextStyle(
      fontSize: 20.sp,
      fontFamily: 'Gilroy',
      fontWeight: fontWeight ?? FontWeight.w500,
      color: color ?? context.colorScheme.text,
    );
  }

  TextStyle subTitle(BuildContext context,
      {Color? color, FontWeight? fontWeight}) {
    return TextStyle(
      fontSize: 14.sp,
      fontFamily: 'Gilroy',
      fontWeight: fontWeight ?? FontWeight.w500,
      color: color ?? context.colorScheme.text,
    );
  }

  TextStyle subTitle2(BuildContext context,
      {Color? color, FontWeight? fontWeight}) {
    return TextStyle(
      fontSize: 12.sp,
      fontFamily: 'Gilroy',
      fontWeight: fontWeight ?? FontWeight.w500,
      color: color ?? context.colorScheme.text,
    );
  }

  TextStyle body(BuildContext context, {Color? color, FontWeight? fontWeight}) {
    return TextStyle(
      fontSize: 16.sp,
      fontFamily: 'Gilroy',
      fontWeight: fontWeight ?? FontWeight.w400,
      color: color ?? context.colorScheme.text,
    );
  }

  TextStyle buttonText(BuildContext context,
      {Color? color, FontWeight? fontWeight}) {
    return TextStyle(
      fontSize: 18.sp,
      fontFamily: 'Gilroy',
      fontWeight: fontWeight ?? FontWeight.w900,
      color: color ?? context.colorScheme.white,
    );
  }
}
