import 'package:flutter/material.dart';

class ScaleWidget extends StatelessWidget {
  const ScaleWidget({
    Key key,
    @required this.child,
    this.alignment = Alignment.centerLeft,
    this.fit: BoxFit.scaleDown,
  }) : super(key: key);

  final Widget child;
  final Alignment alignment;
  final BoxFit fit;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: alignment,
      child: FittedBox(
        fit: fit,
        child: SizedBox(
          child: child,
        ),
      ),
    );
  }
}
