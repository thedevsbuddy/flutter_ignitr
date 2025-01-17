import 'package:flutter/material.dart';

import '../shared/models/app_color_model.dart';

class AppColors {
  static final AppThemeColorModel theme = AppThemeColorModel(
    success: ColorShadesModel(
      dark: Color(0xFF000000),
      value: Color(0xFF000000),
      light: Color(0xFF000000),
      lighter: Color(0xFF000000),
      darker: Color(0xFF000000),
    ),
    accent: ColorShadesModel(
      dark: Color(0xFF000000),
      value: Color(0xFF000000),
      light: Color(0xFF000000),
      lighter: Color(0xFF000000),
      darker: Color(0xFF000000),
    ),
    info: ColorShadesModel(
      dark: Color(0xFF000000),
      value: Color(0xFF000000),
      light: Color(0xFF000000),
      lighter: Color(0xFF000000),
      darker: Color(0xFF000000),
    ),
    warning: ColorShadesModel(
      dark: Color(0xFF000000),
      value: Color(0xFF000000),
      light: Color(0xFF000000),
      lighter: Color(0xFF000000),
      darker: Color(0xFF000000),
    ),
    error: ColorShadesModel(
      dark: Color(0xFF000000),
      value: Color(0xFF000000),
      light: Color(0xFF000000),
      lighter: Color(0xFF000000),
      darker: Color(0xFF000000),
    ),
  );
  static final AppColorModel primary = AppColorModel(
    background: ColorShadesModel(
      dark: Color(0xFF000000),
      value: Color(0xFF000000),
      light: Color(0xFF000000),
      lighter: Color(0xFF000000),
      darker: Color(0xFF000000),
    ),
    foreground: ColorShadesModel(
      dark: Color(0xFF000000),
      value: Color(0xFF000000),
      light: Color(0xFF000000),
      lighter: Color(0xFF000000),
      darker: Color(0xFF000000),
    ),
  );
  static final AppColorModel secondary = AppColorModel(
    background: ColorShadesModel(
      dark: Color(0xFF000000),
      value: Color(0xFF000000),
      light: Color(0xFF000000),
      lighter: Color(0xFF000000),
      darker: Color(0xFF000000),
    ),
    foreground: ColorShadesModel(
      dark: Color(0xFF000000),
      value: Color(0xFF000000),
      light: Color(0xFF000000),
      lighter: Color(0xFF000000),
      darker: Color(0xFF000000),
    ),
  );
}

// class AppColors {
//   static final AppColorModel dark = AppColorModel(
//     background: ColorShadesModel(
//       value: Color(0xFF000000),
//       dark: Color(0xFF000000),
//       light: Color(0xFF000000),
//       lighter: Color(0xFF000000),
//       darker: Color(0xFF000000),
//     ),
//     foreground: ColorShadesModel(
//       value: Color(0xFF000000),
//       dark: Color(0xFF000000),
//       light: Color(0xFF000000),
//       lighter: Color(0xFF000000),
//       darker: Color(0xFF000000),
//     ),
//   );

//   static final AppColorModel light = AppColorModel(
//     background: ColorShadesModel(
//       value: Color(0xFF000000),
//       dark: Color(0xFF000000),
//       light: Color(0xFF000000),
//       lighter: Color(0xFF000000),
//       darker: Color(0xFF000000),
//     ),
//     foreground: ColorShadesModel(
//       value: Color(0xFF000000),
//       dark: Color(0xFF000000),
//       light: Color(0xFF000000),
//       lighter: Color(0xFF000000),
//       darker: Color(0xFF000000),
//     ),
//   );

//   static final AppThemeColorModel theme = AppThemeColorModel(
//     success: ColorShadesModel(
//       dark: Color(0xFF000000),
//       value: Color(0xFF000000),
//       light: Color(0xFF000000),
//       lighter: Color(0xFF000000),
//       darker: Color(0xFF000000),
//     ),
//     accent: ColorShadesModel(
//       dark: Color(0xFF000000),
//       value: Color(0xFF000000),
//       light: Color(0xFF000000),
//       lighter: Color(0xFF000000),
//       darker: Color(0xFF000000),
//     ),
//     info: ColorShadesModel(
//       dark: Color(0xFF000000),
//       value: Color(0xFF000000),
//       light: Color(0xFF000000),
//       lighter: Color(0xFF000000),
//       darker: Color(0xFF000000),
//     ),
//     warning: ColorShadesModel(
//       dark: Color(0xFF000000),
//       value: Color(0xFF000000),
//       light: Color(0xFF000000),
//       lighter: Color(0xFF000000),
//       darker: Color(0xFF000000),
//     ),
//     error: ColorShadesModel(
//       dark: Color(0xFF000000),
//       value: Color(0xFF000000),
//       light: Color(0xFF000000),
//       lighter: Color(0xFF000000),
//       darker: Color(0xFF000000),
//     ),
//   );
//   static final AppColorModel primary = AppColorModel(
//     background: ColorShadesModel(
//       dark: Color(0xFF000000),
//       value: Color(0xFF000000),
//       light: Color(0xFF000000),
//       lighter: Color(0xFF000000),
//       darker: Color(0xFF000000),
//     ),
//     foreground: ColorShadesModel(
//       dark: Color(0xFF000000),
//       value: Color(0xFF000000),
//       light: Color(0xFF000000),
//       lighter: Color(0xFF000000),
//       darker: Color(0xFF000000),
//     ),
//   );
//   static final AppColorModel secondary = AppColorModel(
//     background: ColorShadesModel(
//       dark: Color(0xFF000000),
//       value: Color(0xFF000000),
//       light: Color(0xFF000000),
//       lighter: Color(0xFF000000),
//       darker: Color(0xFF000000),
//     ),
//     foreground: ColorShadesModel(
//       dark: Color(0xFF000000),
//       value: Color(0xFF000000),
//       light: Color(0xFF000000),
//       lighter: Color(0xFF000000),
//       darker: Color(0xFF000000),
//     ),
//   );

//   static Color primaryBg(BuildContext context) {
//     return Theme.of(context).brightness == Brightness.dark ? primary.background.value : primary.background.value;
//   }

//   static Color primaryFg(BuildContext context) {
//     return Theme.of(context).brightness == Brightness.dark ? primary.foreground.dark : primary.foreground.light;
//   }

//   static Color secondaryBg(BuildContext context) {
//     return Theme.of(context).brightness == Brightness.dark ? secondary.background.dark : secondary.background.light;
//   }

//   static Color secondaryFg(BuildContext context) {
//     return Theme.of(context).brightness == Brightness.dark ? secondary.foreground.dark : secondary.foreground.light;
//   }
// }
