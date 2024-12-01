import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileScreen;
  final Widget webScreen;
  const ResponsiveLayout(
      {super.key, required this.mobileScreen, required this.webScreen});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, Constraints) {
      if (Constraints.maxWidth > 600) {
        return webScreen;
      }
      return mobileScreen;
    });
  }
}
