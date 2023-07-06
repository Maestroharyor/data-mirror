import 'package:flutter/material.dart';

Widget addHorizontalSpace(double width) {
  return SizedBox(
    width: width,
  );
}

Widget addVerticalSpace(double height) {
  return SizedBox(
    height: height,
  );
}

class SpaceWrapper extends StatelessWidget {
  final Widget child;
  final double horizontal;
  final double vertical;
  const SpaceWrapper(
      {Key? key,
      required this.child,
      this.horizontal = 0.0,
      this.vertical = 0.0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: horizontal, vertical: vertical),
      child: child,
    );
  }
}
