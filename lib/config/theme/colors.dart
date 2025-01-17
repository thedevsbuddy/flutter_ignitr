import 'package:flutter/material.dart';

import '../../app/helpers/color_palette.dart';
import '../../app/shared/models/app_color_model.dart';

/// [lightColors] returns [AppColorModel] containing light theme colors
final AppColorModel lightColors = AppColorModel(
  /// Theme Colors
  accent: kcAccent,
  danger: kcDanger,
  success: kcSuccess,
  info: kcInfo,
  warning: kcWarning,

  /// Primary Colors
  primarySurfaceLighter: kcWhite,
  primarySurfaceLight: kcWhite,
  primarySurface: kcWhite,
  primarySurfaceDark: kcSlate.shade200,
  primarySurfaceDarker: kcSlate.shade400,

  primaryContentLighter: kcSlate.shade700,
  primaryContentLight: kcSlate.shade700,
  primaryContent: kcSlate.shade600,
  primaryContentDark: kcSlate.shade600,
  primaryContentDarker: kcSlate.shade600,

  /// Secondary Colors
  secondarySurfaceLighter: kcSlate.shade100,
  secondarySurfaceLight: kcSlate.shade200,
  secondarySurface: kcSlate.shade50,
  secondarySurfaceDark: kcSlate.shade400,
  secondarySurfaceDarker: kcSlate.shade500,

  secondaryContentLighter: kcSlate.shade800,
  secondaryContentLight: kcSlate.shade700,
  secondaryContent: kcSlate.shade600,
  secondaryContentDark: kcSlate.shade700,
  secondaryContentDarker: kcSlate.shade800,
);

/// [darkColors] returns [AppColorModel] containing dark theme colors
final AppColorModel darkColors = AppColorModel(
  /// Theme Colors
  accent: kcAccent,
  danger: kcDanger,
  success: kcSuccess,
  info: kcInfo,
  warning: kcWarning,

  /// Primary Colors
  primarySurface: Color(0xffF9F9F9),
  primarySurfaceLight: Color(0xffF9F9F9),
  primarySurfaceLighter: Color(0xffF9F9F9),
  primarySurfaceDark: Color(0xffF9F9F9),
  primarySurfaceDarker: Color(0xffF9F9F9),
  primaryContent: Color(0xff1E1E1E),
  primaryContentLight: Color(0xff4A4A4A),
  primaryContentLighter: Color(0xff4A4A4A),
  primaryContentDark: Color(0xff000000),
  primaryContentDarker: Color(0xff7E7E7E),

  /// Secondary Colors
  secondarySurface: Color(0xffF9F9F9),
  secondarySurfaceLight: Color(0xffF9F9F9),
  secondarySurfaceLighter: Color(0xffF9F9F9),
  secondarySurfaceDark: Color(0xffF9F9F9),
  secondarySurfaceDarker: Color(0xffF9F9F9),
  secondaryContent: Color(0xff1E1E1E),
  secondaryContentLight: Color(0xff4A4A4A),
  secondaryContentLighter: Color(0xff4A4A4A),
  secondaryContentDark: Color(0xff000000),
  secondaryContentDarker: Color(0xff7E7E7E),
);
