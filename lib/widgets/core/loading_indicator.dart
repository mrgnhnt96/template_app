import 'package:flutter/material.dart';
import 'package:template_mobile/styles/color_themes.dart';

class LoadingIndicator extends StatelessWidget {
  const LoadingIndicator({
    this.color: ColorThemes.primary,
    Key key,
  }) : super(key: key);

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 20,
        width: 20,
        child: Center(
          child: Theme(
            data: ThemeData(
              accentColor: color,
            ),
            child: CircularProgressIndicator(),
          ),
        ),
      ),
    );
  }
}
