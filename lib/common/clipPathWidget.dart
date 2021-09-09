import 'package:flutter/material.dart';

//Custom clipper to render curve in card used to show two different images
class MyCustomCardClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = new Path();
    path.lineTo(0.0, size.height);
    path.lineTo(size.width * 0.5, size.height);
    var firstEndPoint = new Offset(size.width * 0.25, size.height / 2);
    var controlPoint = new Offset(size.width * 0.25, 0.0);
    path.quadraticBezierTo(
        firstEndPoint.dx, firstEndPoint.dy, controlPoint.dx, controlPoint.dy);
    path.lineTo(size.width * 0.25, 0.0);
    // path.lineTo(size.height, 0.0)
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

//Custom triangle Clipper used inside box to display message.
class CustomTriangleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(size.width, 0);
    path.lineTo(size.width / 2, size.height / 2);
    path.lineTo(0, 0);
    // path.lineTo(size., y)
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
