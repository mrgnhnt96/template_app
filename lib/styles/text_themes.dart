import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:template_mobile/styles/color_themes.dart';

class TextThemes {
  static TextStyle oswaldBase = GoogleFonts.oswald();

  /// color: dark gray
  /// size: 50
  static TextStyle header1 = oswaldBase.copyWith(
    fontSize: 50,
    color: ColorThemes.dark,
    fontWeight: FontWeight.bold,
  );

  /// color: dark gray
  /// size: 45
  static TextStyle header2 = oswaldBase.copyWith(
    color: ColorThemes.dark,
    fontSize: 45,
  );

  /// color: dark gray
  /// size: 25
  static TextStyle button = oswaldBase.copyWith(
    color: ColorThemes.dark,
    fontSize: 25,
  );

  /// color: dark gray
  /// size: 15
  static TextStyle dataInput = oswaldBase.copyWith(
    color: ColorThemes.dark,
    fontSize: 15,
  );

  // PRIMARY
  /// color: brown
  /// size: 50
  static TextStyle primaryHeader1 = header1.copyWith(color: ColorThemes.primary);

  /// color: brown
  /// size: 45
  static TextStyle primaryHeader2 = header2.copyWith(color: ColorThemes.primary);

  /// color: brown
  /// size: 25
  static TextStyle primaryButton = button.copyWith(color: ColorThemes.primary);

  /// color: brown
  /// size: 15
  static TextStyle primaryDataInput = dataInput.copyWith(color: ColorThemes.primary);

  // SECONDARY
  /// color: off white
  /// size: 50
  static TextStyle secondaryHeader1 = header1.copyWith(color: ColorThemes.secondary);

  /// color: off white
  /// size: 45
  static TextStyle secondaryHeader2 = header2.copyWith(color: ColorThemes.secondary);

  /// color: off white
  /// size: 25
  static TextStyle secondaryButton = button.copyWith(color: ColorThemes.secondary);

  /// color: off white
  /// size: 15
  static TextStyle secondaryDataInput = dataInput.copyWith(color: ColorThemes.secondary);

  // GRAY
  /// color: gray
  /// size: 50
  static TextStyle grayHeader1 = header1.copyWith(color: ColorThemes.gray);

  /// color: gray
  /// size: 45
  static TextStyle grayHeader2 = header2.copyWith(color: ColorThemes.gray);

  /// color: gray
  /// size: 25
  static TextStyle grayButton = button.copyWith(color: ColorThemes.gray);

  /// color: gray
  /// size: 15
  static TextStyle grayDataInput = dataInput.copyWith(color: ColorThemes.gray);
}
