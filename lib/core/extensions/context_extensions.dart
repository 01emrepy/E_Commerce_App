import 'package:e_commerce/core/init/thema/custom_theme.dart';
import 'package:flutter/material.dart';


extension ContextExtension on BuildContext {
  MediaQueryData get mediaQuery => MediaQuery.of(this);
  TextTheme get textTheme => Theme.of(this).textTheme;
  ThemeData get theme => Theme.of(this);
}

extension MediaQueryExtension on BuildContext {
  double get height => mediaQuery.size.height;
  double get width => mediaQuery.size.width;

  double get lowValue => height * 0.01;
  double get normalValue => height * 0.02;
  double get mediumValue => height * 0.04;
  double get highValue => height * 0.1;
}

extension ThemeExtension on BuildContext {
  ThemeData get theme => Theme.of(this);
  ColorScheme get colors => theme.colorScheme;
  TextTheme get textTheme => CustomTextTheme(this);

  bool get isDarkMode => Theme.of(this).brightness == Brightness.dark;

  Color get primaryColor => const Color(0xFF5c3fbc);
  Color get secondaryColor => const Color(0xFFdadbfe);
  Color get secondaryVariant => const Color(0xFFffd301);
  Color get red => isDarkMode
      ? const Color.fromARGB(255, 255, 69, 58)
      : const Color.fromARGB(255, 255, 59, 48);

  Color get orange => isDarkMode
      ? const Color.fromARGB(255, 255, 159, 10)
      : const Color.fromARGB(255, 255, 149, 0);

  Color get yellow => isDarkMode
      ? const Color.fromARGB(255, 255, 214, 10)
      : const Color.fromARGB(255, 255, 204, 0);

  Color get green => isDarkMode
      ? const Color.fromARGB(255, 48, 209, 88)
      : const Color.fromARGB(255, 52, 199, 89);

  Color get teal => isDarkMode
      ? const Color.fromARGB(255, 100, 210, 255)
      : const Color.fromARGB(255, 90, 200, 250);

  Color get blue => isDarkMode
      ? const Color.fromARGB(255, 10, 132, 255)
      : const Color.fromARGB(255, 0, 122, 255);

  Color get indigo => isDarkMode
      ? const Color.fromARGB(255, 94, 92, 230)
      : const Color.fromARGB(255, 88, 86, 214);

  Color get purple => isDarkMode
      ? const Color.fromARGB(255, 191, 90, 242)
      : const Color.fromARGB(255, 175, 82, 222);

  Color get pink => isDarkMode
      ? const Color.fromARGB(255, 255, 55, 95)
      : const Color.fromARGB(255, 255, 45, 85);

  Color get grey => isDarkMode
      ? const Color.fromARGB(255, 142, 142, 147)
      : const Color.fromARGB(255, 142, 142, 147);

  Color get grey2 => isDarkMode
      ? const Color.fromARGB(255, 99, 99, 102)
      : const Color.fromARGB(255, 174, 174, 178);

  Color get grey3 => isDarkMode
      ? const Color.fromARGB(255, 72, 72, 74)
      : const Color.fromARGB(255, 199, 199, 204);

  Color get grey4 => isDarkMode
      ? const Color.fromARGB(255, 58, 58, 60)
      : const Color.fromARGB(255, 209, 209, 214);

  Color get grey5 => isDarkMode
      ? const Color.fromARGB(255, 44, 44, 46)
      : const Color.fromARGB(255, 229, 229, 234);

  Color get grey6 => isDarkMode
      ? const Color.fromARGB(255, 28, 28, 30)
      : const Color.fromARGB(255, 242, 242, 247);

  Color get label => isDarkMode
      ? const Color.fromARGB(255, 255, 255, 255)
      : const Color.fromARGB(255, 0, 0, 0);

  Color get secondaryLabel => isDarkMode
      ? const Color(0xff8083A3)
      : const Color.fromARGB(153, 60, 60, 67);

  Color get tertiaryLabel => isDarkMode
      ? const Color.fromARGB(153, 235, 235, 245)
      : const Color.fromARGB(153, 60, 60, 67);

  Color get quaternaryLabel => isDarkMode
      ? const Color.fromARGB(40, 235, 235, 245)
      : const Color.fromARGB(45, 60, 60, 67);

  Color get background => isDarkMode
      ? const Color.fromARGB(255, 0, 0, 0)
      : const Color.fromARGB(255, 255, 255, 255);

  Color get secondaryBackground => isDarkMode
      ? const Color.fromARGB(255, 28, 28, 30)
      : const Color.fromARGB(255, 242, 242, 247);

  Color get tertiaryBackground => isDarkMode
      ? const Color.fromARGB(255, 44, 44, 46)
      : const Color.fromARGB(255, 255, 255, 255);

  Color get groupedBackground => isDarkMode
      ? const Color.fromARGB(255, 44, 44, 46)
      : const Color.fromARGB(255, 242, 242, 247);

  Color get secondaryGroupedBackground => isDarkMode
      ? const Color.fromARGB(255, 28, 28, 30)
      : const Color.fromARGB(255, 255, 255, 255);

  Color get tertiaryGroupedBackground => isDarkMode
      ? const Color.fromARGB(255, 44, 44, 46)
      : const Color.fromARGB(255, 242, 242, 247);

  Color get cyan => isDarkMode
      ? const Color.fromRGBO(100, 210, 255, 1)
      : const Color.fromRGBO(100, 210, 255, 1);

  Color get mint => isDarkMode
      ? const Color.fromRGBO(102, 212, 207, 1)
      : const Color.fromRGBO(0, 199, 190, 1);

  Color get brown => isDarkMode
      ? const Color.fromRGBO(172, 142, 104, 1)
      : const Color.fromRGBO(162, 132, 94, 1);

  Color get seperatorColor => isDarkMode
      ? const Color.fromRGBO(84, 84, 88, 0.6)
      : const Color.fromRGBO(60, 60, 67, 0.29);

  Color get opaqueSeperatorColor => isDarkMode
      ? const Color.fromRGBO(56, 56, 58, 1)
      : const Color.fromRGBO(198, 198, 200, 1);

  Color get placeholderColor => isDarkMode
      ? const Color.fromRGBO(235, 235, 245, 0.3)
      : const Color.fromRGBO(60, 60, 67, 0.3);
}

extension PaddingExtensionAll on BuildContext {
  EdgeInsets get paddingLow => EdgeInsets.all(lowValue);
  EdgeInsets get paddingNormal => EdgeInsets.all(normalValue);
  EdgeInsets get paddingMedium => EdgeInsets.all(mediumValue);
  EdgeInsets get paddingHigh => EdgeInsets.all(highValue);
}

extension PaddingExtensionSymetric on BuildContext {
  EdgeInsets get paddingLowVertical => EdgeInsets.symmetric(vertical: lowValue);
  EdgeInsets get paddingNormalVertical =>
      EdgeInsets.symmetric(vertical: normalValue);
  EdgeInsets get paddingMediumVertical =>
      EdgeInsets.symmetric(vertical: mediumValue);
  EdgeInsets get paddingHighVertical =>
      EdgeInsets.symmetric(vertical: highValue);

  EdgeInsets get paddingLowHorizontal =>
      EdgeInsets.symmetric(horizontal: lowValue);
  EdgeInsets get paddingNormalHorizontal =>
      EdgeInsets.symmetric(horizontal: normalValue);
  EdgeInsets get paddingMediumHorizontal =>
      EdgeInsets.symmetric(horizontal: mediumValue);
  EdgeInsets get paddingHighHorizontal =>
      EdgeInsets.symmetric(horizontal: highValue);
}

extension DurationExtension on BuildContext {
  Duration get lowDuration => const Duration(milliseconds: 500);
  Duration get normalDuration => const Duration(seconds: 1);
}

extension SizedBoxExtension on BuildContext {
  Widget get emptySizedWidthBoxLow3x => SizedBox(width: width * 0.03);
  Widget get emptySizedWidthBoxLow => SizedBox(width: width * 0.01);
  Widget get emptySizedHeightBoxLow => SizedBox(height: width * 0.01);
  Widget get emptySizedHeightBoxLow3x => SizedBox(height: width * 0.03);
  Widget get emptySizedHeightBoxNormal => SizedBox(height: width *0.05);
  Widget get emptySizedHeightBoxHigh => SizedBox(height: width * 0.1);
}

