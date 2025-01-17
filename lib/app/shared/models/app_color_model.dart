import 'package:flutter/material.dart';

// class AppColorModel {
//   final dynamic dark;
//   final dynamic light;

//   AppColorModel({
//     required this.dark,
//     required this.light,
//   });
// }

class AppColorModel {
  final ColorShadesModel background;
  final ColorShadesModel foreground;

  AppColorModel({
    required this.background,
    required this.foreground,
  });
}

class ColorShadesModel {
  final Color value;
  final Color light;
  final Color lighter;
  final Color dark;
  final Color darker;

  ColorShadesModel({
    required this.value,
    required this.light,
    required this.lighter,
    required this.dark,
    required this.darker,
  });
}

class AppThemeColorModel {
  final ColorShadesModel accent;
  final ColorShadesModel success;
  final ColorShadesModel info;
  final ColorShadesModel warning;
  final ColorShadesModel error;

  AppThemeColorModel({
    required this.accent,
    required this.success,
    required this.info,
    required this.warning,
    required this.error,
  });
}
