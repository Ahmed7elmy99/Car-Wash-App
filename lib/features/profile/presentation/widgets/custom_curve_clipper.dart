import 'package:flutter/material.dart';

class CustomCurveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    final double xScaling = size.width / 375;
    final double yScaling = size.height / 170;
    path.lineTo(0 * xScaling, 0 * yScaling);
    path.cubicTo(
      0 * xScaling,
      0 * yScaling,
      375 * xScaling,
      0 * yScaling,
      375 * xScaling,
      0 * yScaling,
    );
    path.cubicTo(
      375 * xScaling,
      0 * yScaling,
      375 * xScaling,
      170 * yScaling,
      375 * xScaling,
      170 * yScaling,
    );
    path.cubicTo(
      375 * xScaling,
      170 * yScaling,
      330.381 * xScaling,
      170 * yScaling,
      330.381 * xScaling,
      170 * yScaling,
    );
    path.cubicTo(
      303.519 * xScaling,
      170 * yScaling,
      277.735 * xScaling,
      159.433 * yScaling,
      258.598 * xScaling,
      140.581 * yScaling,
    );
    path.cubicTo(
      258.598 * xScaling,
      140.581 * yScaling,
      251.236 * xScaling,
      133.328 * yScaling,
      251.236 * xScaling,
      133.328 * yScaling,
    );
    path.cubicTo(
      213.278 * xScaling,
      95.9344 * yScaling,
      151.664 * xScaling,
      98.2347 * yScaling,
      116.6 * xScaling,
      138.355 * yScaling,
    );
    path.cubicTo(
      99.0251 * xScaling,
      158.463 * yScaling,
      73.6206 * xScaling,
      170 * yScaling,
      46.9141 * xScaling,
      170 * yScaling,
    );
    path.cubicTo(
      46.9141 * xScaling,
      170 * yScaling,
      0 * xScaling,
      170 * yScaling,
      0 * xScaling,
      170 * yScaling,
    );
    path.cubicTo(
      0 * xScaling,
      170 * yScaling,
      0 * xScaling,
      0 * yScaling,
      0 * xScaling,
      0 * yScaling,
    );
    path.cubicTo(
      0 * xScaling,
      0 * yScaling,
      0 * xScaling,
      0 * yScaling,
      0 * xScaling,
      0 * yScaling,
    );
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
