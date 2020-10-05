import 'package:flutter/material.dart';

class RemoveFocusNode extends StatelessWidget {
  const RemoveFocusNode({
    Key key,
    @required Widget child,
  })  : _child = child,
        super(key: key);

  final Widget _child;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        removeFocusNode(context);
      },
      child: _child,
    );
  }
}

void removeFocusNode(BuildContext context) {
  FocusScopeNode currentFocus = FocusScope.of(context);
  if (!currentFocus.hasPrimaryFocus) {
    currentFocus.unfocus();
  }
}
