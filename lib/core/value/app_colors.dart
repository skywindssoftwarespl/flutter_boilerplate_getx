import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppColors {
  AppColors._();

  // https://m3.material.io/styles/color/the-color-system/color-roles
  static Color primary = Get.theme.colorScheme.primary;
  static Color secondary = Get.theme.colorScheme.secondary;
  static Color tertiary = Get.theme.colorScheme.tertiary;
  static Color error = Get.theme.colorScheme.error;
  static Color background = Get.theme.colorScheme.background;
  static Color outline = Get.theme.colorScheme.outline;
  static Color outlineVariant = Get.theme.colorScheme.outlineVariant;
  static Color onPrimary = Get.theme.colorScheme.onPrimary;
  static Color onSecondary = Get.theme.colorScheme.onSecondary;
  static Color onTertiary = Get.theme.colorScheme.onTertiary;
  static Color onError = Get.theme.colorScheme.onError;
  static Color onBackground = Get.theme.colorScheme.onBackground;
  static Color primaryContainer = Get.theme.colorScheme.primaryContainer;
  static Color secondaryContainer = Get.theme.colorScheme.secondaryContainer;
  static Color tertiaryContainer = Get.theme.colorScheme.tertiaryContainer;
  static Color errorContainer = Get.theme.colorScheme.errorContainer;
  static Color surface = Get.theme.colorScheme.surface;
  static Color surfaceVariant = Get.theme.colorScheme.surfaceVariant;
  static Color onPrimaryContainer = Get.theme.colorScheme.onPrimaryContainer;
  static Color onSecondaryContainer = Get.theme.colorScheme.onSecondaryContainer;
  static Color onTertiaryContainer = Get.theme.colorScheme.onTertiaryContainer;
  static Color onErrorContainer = Get.theme.colorScheme.onErrorContainer;
  static Color onSurface = Get.theme.colorScheme.onSurface;
  static Color onSurfaceVariant = Get.theme.colorScheme.onSurfaceVariant;

  // Action item on the inverse surface
  static Color inversePrimary = Get.theme.colorScheme.inversePrimary;

  // snackbar background to bring attention to an alert
  static Color inverseSurface = Get.theme.colorScheme.inverseSurface;

  // text and icons on the inverse surface
  static Color onInverseSurface = Get.theme.colorScheme.onInverseSurface;

  static Color transparent = Colors.transparent;

  static const Color white = Color(0xffffffff);
  static const Color black = Color(0xff000000);
}
