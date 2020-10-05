import 'package:flutter/material.dart';
import 'package:template_mobile/styles/color_themes.dart';

class ShadowThemes {
  static const List<BoxShadow> primary = [
    BoxShadow(
      blurRadius: 10,
      color: ColorThemes.gray,
      offset: Offset(3, 3),
    )
  ];
}
